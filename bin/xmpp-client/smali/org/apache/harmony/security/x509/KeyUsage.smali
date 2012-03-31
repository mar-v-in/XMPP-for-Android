.class public Lorg/apache/harmony/security/x509/KeyUsage;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "KeyUsage.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static final USAGES:[Ljava/lang/String;


# instance fields
.field private final keyUsage:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "digitalSignature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 54
    const-string v2, "nonRepudiation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 55
    const-string v2, "keyEncipherment"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 56
    const-string v2, "dataEncipherment"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 57
    const-string v2, "keyAgreement"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 58
    const-string v2, "keyCertSign"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 59
    const-string v2, "cRLSign"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 60
    const-string v2, "encipherOnly"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 61
    const-string v2, "decipherOnly"

    aput-object v2, v0, v1

    .line 53
    sput-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->USAGES:[Ljava/lang/String;

    .line 70
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;

    invoke-direct {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 48
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 84
    sget-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    .line 85
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0
    .parameter "keyUsage"

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    .line 77
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "KeyUsage [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 97
    sget-object v2, Lorg/apache/harmony/security/x509/KeyUsage;->USAGES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->encoding:[B

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->encoding:[B

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->encoding:[B

    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    return-object v0
.end method
