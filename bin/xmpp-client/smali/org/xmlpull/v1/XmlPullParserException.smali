.class public Lorg/xmlpull/v1/XmlPullParserException;
.super Ljava/lang/Exception;
.source "XmlPullParserException.java"


# static fields
.field private static final serialVersionUID:J = 0x322990c32b9f0544L


# instance fields
.field protected column:I

.field protected detail:Ljava/lang/Throwable;

.field protected row:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 19
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "msg"
    .parameter "parser"
    .parameter "chain"

    .prologue
    const/4 v3, -0x1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    if-nez p2, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    if-nez p3, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput v3, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 19
    iput v3, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 44
    if-eqz p2, :cond_0

    .line 45
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 46
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 48
    :cond_0
    iput-object p3, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    .line 49
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "(position:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 42
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "caused by: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    return v0
.end method

.method public getDetail()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    return v0
.end method

.method public printStackTrace()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v3, "; nested exception is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
