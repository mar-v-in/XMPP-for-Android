.class public Lorg/jivesoftware/smack/debugger/ConsoleDebugger;
.super Ljava/lang/Object;
.source "ConsoleDebugger.java"

# interfaces
.implements Lorg/jivesoftware/smack/debugger/SmackDebugger;


# static fields
.field public static printInterpreted:Z


# instance fields
.field private connListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private final dateFormatter:Ljava/text/SimpleDateFormat;

.field private listener:Lorg/jivesoftware/smack/PacketListener;

.field private reader:Ljava/io/Reader;

.field private readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

.field private writer:Ljava/io/Writer;

.field private writerListener:Lorg/jivesoftware/smack/util/WriterListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->printInterpreted:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3
    .parameter "connection"
    .parameter "writer"
    .parameter "reader"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 36
    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 38
    iput-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    .line 40
    iput-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->listener:Lorg/jivesoftware/smack/PacketListener;

    .line 41
    iput-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 49
    iput-object p1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    .line 50
    iput-object p2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writer:Ljava/io/Writer;

    .line 51
    iput-object p3, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->reader:Ljava/io/Reader;

    .line 52
    invoke-direct {p0}, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->createDebug()V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/debugger/ConsoleDebugger;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/debugger/ConsoleDebugger;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private createDebug()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->reader:Ljava/io/Reader;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v0, debugReader:Lorg/jivesoftware/smack/util/ObservableReader;
    new-instance v2, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$1;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$1;-><init>(Lorg/jivesoftware/smack/debugger/ConsoleDebugger;)V

    iput-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    .line 70
    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/ObservableReader;->addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 74
    new-instance v1, Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writer:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    .line 75
    .local v1, debugWriter:Lorg/jivesoftware/smack/util/ObservableWriter;
    new-instance v2, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$2;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$2;-><init>(Lorg/jivesoftware/smack/debugger/ConsoleDebugger;)V

    iput-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    .line 82
    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;->addWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 87
    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->reader:Ljava/io/Reader;

    .line 88
    iput-object v1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writer:Ljava/io/Writer;

    .line 95
    new-instance v2, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$3;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$3;-><init>(Lorg/jivesoftware/smack/debugger/ConsoleDebugger;)V

    iput-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->listener:Lorg/jivesoftware/smack/PacketListener;

    .line 106
    new-instance v2, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$4;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/debugger/ConsoleDebugger$4;-><init>(Lorg/jivesoftware/smack/debugger/ConsoleDebugger;)V

    iput-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 143
    return-void
.end method


# virtual methods
.method public getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getReaderListener()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->listener:Lorg/jivesoftware/smack/PacketListener;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public getWriterListener()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 3
    .parameter "newReader"

    .prologue
    .line 167
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->reader:Ljava/io/Reader;

    check-cast v1, Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/ObservableReader;->removeReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 168
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    .line 169
    .local v0, debugReader:Lorg/jivesoftware/smack/util/ObservableReader;
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 170
    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->reader:Ljava/io/Reader;

    .line 171
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->reader:Ljava/io/Reader;

    return-object v1
.end method

.method public newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 3
    .parameter "newWriter"

    .prologue
    .line 176
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writer:Ljava/io/Writer;

    check-cast v1, Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;->removeWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 177
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableWriter;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    .line 178
    .local v0, debugWriter:Lorg/jivesoftware/smack/util/ObservableWriter;
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;->addWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 179
    iput-object v0, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writer:Ljava/io/Writer;

    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->writer:Ljava/io/Writer;

    return-object v1
.end method

.method public userHasLogged(Ljava/lang/String;)V
    .locals 4
    .parameter "user"

    .prologue
    .line 185
    const-string v2, ""

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 186
    .local v0, isAnonymous:Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User logged ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    if-eqz v0, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 188
    iget-object v3, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v3, p0, Lorg/jivesoftware/smack/debugger/ConsoleDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 195
    return-void

    .line 187
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
