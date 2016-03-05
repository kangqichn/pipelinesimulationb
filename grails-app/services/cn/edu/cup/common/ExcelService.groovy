package cn.edu.cup.common

import grails.transaction.Transactional
import jxl.Cell
import jxl.Sheet
import jxl.Workbook
import jxl.write.Label
import jxl.write.WritableSheet
import jxl.write.WritableWorkbook

@Transactional
class ExcelService {
    
    /*
     * 输入参数是params.filename=需要导入的excel文件名
     * */
    def importExcelFile(params) {
        def filename
        def data = []
        if (params.filename) {
            filename = params.filename
            def sheetIndex
            if (params.sheetIndex) {
                sheetIndex = params.sheetIndex as int
            } else {
                sheetIndex = 0
            }
            try   {
                //  打开文件 
                File file = new File(filename)
                println "importExcelFile ${file}"
                Workbook book = Workbook.getWorkbook(file);
                //  生成名为“第一页”的工作表，参数0表示这是第一页 
                Sheet sheet  =  book.getSheet(sheetIndex);
            
                def rowCount = sheet.getRows()
                def colCount = sheet.getColumns()

                println "importExcelFile ${rowCount}, ${colCount}"
                
                Cell cell;
                for (int i=0; i<rowCount; i++) {
                    def row = []
                    for (int j=0; j<colCount; j++) {
                        cell = sheet.getCell(j,i)
                        row.add(cell.getContents())
                    }
                    data.add(row)
                }
                //并关闭文件 
                book.close();
                
            }   catch  (Exception e)  {
                println "importExcelFile error: ${e}";
            }        
        } else {
            println "usage: importExcelFile([filename, sheetIndex])"
        }
        return data
    }
    
    def exportExcelFile(String filename, List dataList) {
        try   {
            //  打开文件 
            File file = new File(filename)
            WritableWorkbook book = Workbook.createWorkbook(file);
            //  生成名为“第一页”的工作表，参数0表示这是第一页 
            WritableSheet sheet  =  book.createSheet("第一页",0);
            
            Label label
            dataList.eachWithIndex() {e, i->
                println "ExcelService ${e}"
                def tmps = e.collect()
                tmps.eachWithIndex() {f, j->
                    label = new Label(j, i, f.toString())
                    //  将定义好的单元格添加到工作表中 
                    sheet.addCell(label);
                }
            }

            //  写入数据并关闭文件 
            book.write();
            book.close();

        }   catch  (Exception e)  {
            println "exportExcelFile error: ${e}";
        }        
    }
}
