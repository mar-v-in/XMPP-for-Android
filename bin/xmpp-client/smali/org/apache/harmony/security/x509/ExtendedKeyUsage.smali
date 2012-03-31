.class public Lorg/apache/harmony/security/x509/ExtendedKeyUsage;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ExtendedKeyUsage.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private keys:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    new-instance v1, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;

    invoke-direct {v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter "keys"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 68
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Extended Key Usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    if-nez v2, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    iget-object v2, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    const-string v2, " ]\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .end local v1           #it:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/IOException;
    invoke-super {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_2
    const-string v2, " \""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->encoding:[B

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->keys:Ljava/util/List;

    return-object v0
.end method
