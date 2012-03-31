.class public Lorg/jivesoftware/smack/util/ObservableReader;
.super Ljava/io/Reader;
.source "ObservableReader.java"


# instance fields
.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/ReaderListener;",
            ">;"
        }
    .end annotation
.end field

.field wrappedReader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "wrappedReader"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    .line 41
    return-void
.end method


# virtual methods
.method public addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V
    .locals 2
    .parameter "readerListener"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 64
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readAheadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 69
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1
    .parameter "cbuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 6
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v4, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 89
    .local v0, count:I
    if-lez v0, :cond_0

    .line 90
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 92
    .local v3, str:Ljava/lang/String;
    const/4 v2, 0x0

    check-cast v2, [Lorg/jivesoftware/smack/util/ReaderListener;

    .line 93
    .local v2, readerListeners:[Lorg/jivesoftware/smack/util/ReaderListener;
    iget-object v5, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    monitor-enter v5

    .line 94
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Lorg/jivesoftware/smack/util/ReaderListener;

    .line 95
    iget-object v4, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 101
    .end local v2           #readerListeners:[Lorg/jivesoftware/smack/util/ReaderListener;
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    return v0

    .line 93
    .restart local v2       #readerListeners:[Lorg/jivesoftware/smack/util/ReaderListener;
    .restart local v3       #str:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 97
    :cond_1
    aget-object v1, v2, v4

    .line 98
    .local v1, readerListener:Lorg/jivesoftware/smack/util/ReaderListener;
    invoke-interface {v1, v3}, Lorg/jivesoftware/smack/util/ReaderListener;->read(Ljava/lang/String;)V

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method

.method public removeReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V
    .locals 2
    .parameter "readerListener"

    .prologue
    .line 116
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v1

    .line 119
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 124
    return-void
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ObservableReader;->wrappedReader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
