/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.commons.util;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Matheus
 */
public class UploadImageHandler {
    private DiskFileItemFactory disFileItemFactory;
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024;
    private String AbsolutePathURL;
    private String dataDirectory;
    private String filePath;
    
    public UploadImageHandler(String _absolutePathURL, String _dataDirectory){
        this.AbsolutePathURL = _absolutePathURL;
        this.dataDirectory = _dataDirectory;
        disFileItemFactory = new DiskFileItemFactory();
        disFileItemFactory.setSizeThreshold(MAX_MEMORY_SIZE);
        disFileItemFactory.setRepository(new File(System.getProperty("java.io.tmpdir")));
    }
    
    public long toHash(String _stringToHash){
        return _stringToHash.hashCode();
    }
    
    public String saveFile(HttpServletRequest _requestFile) throws IOException, FileUploadException, Exception{
        ServletFileUpload servletFileUpload = new ServletFileUpload(this.disFileItemFactory);
        servletFileUpload.setSizeMax(MAX_REQUEST_SIZE);
        
        List<FileItem> items = servletFileUpload.parseRequest(_requestFile);
        for(FileItem _item : items){
            if(!_item.isFormField()){
                String fileName = new File(_item.getName()).getName();
                filePath = this.getAbsolutePathURL() + 
                        fileName; 
                        /*this.getAbsolutePathURL() 
                        + File.separator + this.toHash(this.getDataDirectory()) 
                        + File.separator + fileName;*/
                File uploadedFile = new File(filePath);
                if(!uploadedFile.exists())
                    uploadedFile.createNewFile();
                _item.write(uploadedFile);
            }
        }
        return filePath;
    }

    private void setAbsolutePathURL(String _uploadFolderPath){
        this.AbsolutePathURL = _uploadFolderPath;
    }
    
    private String getAbsolutePathURL(){
        return this.AbsolutePathURL;
    }   
    
    private String getDataDirectory() {
        return dataDirectory;
    }

    private void setDataDirectory(String dataDirectory) {
        this.dataDirectory = dataDirectory;
    }
}