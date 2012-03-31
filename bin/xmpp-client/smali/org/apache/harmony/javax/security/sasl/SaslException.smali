.class public Lorg/apache/harmony/javax/security/sasl/SaslException;
.super Ljava/io/IOException;
.source "SaslException.java"


# static fields
.field private static final serialVersionUID:J = 0x3f8ea98b912ad08aL


# instance fields
.field private _exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detail"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detail"
    .parameter "ex"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-super {p0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 43
    iput-object p2, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .parameter "cause"

    .prologue
    .line 54
    invoke-super {p0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    .line 56
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 62
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, ", caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lorg/apache/harmony/javax/security/sasl/SaslException;->_exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
