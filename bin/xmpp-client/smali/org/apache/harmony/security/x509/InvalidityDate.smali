.class public Lorg/apache/harmony/security/x509/InvalidityDate;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InvalidityDate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final date:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    .line 60
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
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 52
    sget-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    .line 53
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Invalidity Date: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    return-void
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    return-object v0
.end method
