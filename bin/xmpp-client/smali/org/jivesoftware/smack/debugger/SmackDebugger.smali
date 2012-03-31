.class public interface abstract Lorg/jivesoftware/smack/debugger/SmackDebugger;
.super Ljava/lang/Object;
.source "SmackDebugger.java"


# virtual methods
.method public abstract getReader()Ljava/io/Reader;
.end method

.method public abstract getReaderListener()Lorg/jivesoftware/smack/PacketListener;
.end method

.method public abstract getWriter()Ljava/io/Writer;
.end method

.method public abstract getWriterListener()Lorg/jivesoftware/smack/PacketListener;
.end method

.method public abstract newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;
.end method

.method public abstract newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;
.end method

.method public abstract userHasLogged(Ljava/lang/String;)V
.end method
