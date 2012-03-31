.class public Lorg/apache/harmony/security/x509/ExtensionValue;
.super Ljava/lang/Object;
.source "ExtensionValue.java"


# instance fields
.field protected encoding:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    .line 43
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 50
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Unparseable extension value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_1

    .line 63
    const-string v0, "NULL\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method
