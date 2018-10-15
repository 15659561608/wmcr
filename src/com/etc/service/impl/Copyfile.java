package com.etc.service.impl;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

public class Copyfile {
	public static FileChannel copyFile(String srcPath, String descPath) {
		System.out.println("tr::11"+descPath);
		System.out.println("tr::1122"+srcPath);

		// srcPath descPath 最好要判断一下

		// 先使用FileInputStream读取文件
		FileInputStream fis = null;
		FileOutputStream fos = null;
		FileChannel channelOutPut=null;
			try {
				fis = new FileInputStream(srcPath);
				// 写入的目标位置,FileOutputStream 指向写入位置
				fos = new FileOutputStream(descPath);

				// 第一个参数byte数组 第二个参数是起始位置 长度,此时需要一个字节数组
				FileChannel channelInput = fis.getChannel();
				 channelOutPut = fos.getChannel();

				// channelInput.size() 文件输入流对应管道数据的大小
				// 输入管道对象.transferTo(起始位置,长度,输入管道对象)
				channelInput.transferTo(0, channelInput.size(), channelOutPut);

				channelOutPut.close();
				channelInput.close();
				
				System.out.println("复制成功~");
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return channelOutPut;
			
	}

}
