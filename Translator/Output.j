.class public Output 
.super java/lang/Object

.method public <init>()V
 aload_0
 invokenonvirtual java/lang/Object/<init>()V
 return
.end method

.method public static print(I)V
 .limit stack 2
 getstatic java/lang/System/out Ljava/io/PrintStream;
 iload_0 
 invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
 invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
 return
.end method

.method public static read()I
 .limit stack 3
 new java/util/Scanner
 dup
 getstatic java/lang/System/in Ljava/io/InputStream;
 invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
 invokevirtual java/util/Scanner/next()Ljava/lang/String;
 invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I
 ireturn
.end method

.method public static run()V
 .limit stack 1024
 .limit locals 256
 invokestatic Output/read()I
 istore 0
 invokestatic Output/read()I
 istore 1
L2:
 iload 0
 iload 1
 if_icmpne L0
 goto L1
L0:
 iload 0
 iload 1
 if_icmpgt L3
 goto L5
L3:
 iload 0
 iload 1
 isub 
 dup 
 istore 0
 pop 
 goto L4
L5:
 iload 1
 iload 0
 isub 
 dup 
 istore 1
 pop 
 goto L4
L4:
 goto L2
L1:
 iload 0
 invokestatic Output/print(I)V
 iload 1
 iload 0
 iadd 
 ldc 100
 iadd 
 invokestatic Output/print(I)V
 ldc 2000
 invokestatic Output/print(I)V
 return
.end method

.method public static main([Ljava/lang/String;)V
 invokestatic Output/run()V
 return
.end method

