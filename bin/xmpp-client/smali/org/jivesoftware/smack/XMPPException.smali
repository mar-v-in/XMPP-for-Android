.class public Lorg/jivesoftware/smack/XMPPException;
.super Ljava/lang/Exception;
.source "XMPPException.java"


# static fields
.field private static final serialVersionUID:J = -0x689b220bbb676f97L


# instance fields
.field private error:Lorg/jivesoftware/smack/packet/XMPPError;

.field private streamError:Lorg/jivesoftware/smack/packet/StreamError;

.field private wrappedThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "wrappedThrowable"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 96
    iput-object p2, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 1
    .parameter "message"
    .parameter "error"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 110
    iput-object p2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "error"
    .parameter "wrappedThrowable"

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 127
    iput-object p2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 128
    iput-object p3, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "wrappedThrowable"

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 140
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/StreamError;)V
    .locals 1
    .parameter "streamError"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 72
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 1
    .parameter "error"

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 53
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 152
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 153
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 162
    .restart local v0       #msg:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamError()Lorg/jivesoftware/smack/packet/StreamError;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    return-object v0
.end method

.method public getWrappedThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 202
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 206
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 211
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 215
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 216
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 220
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 236
    const-string v2, "\n  -- caused by: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
