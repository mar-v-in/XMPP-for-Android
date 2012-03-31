.class public Lorg/apache/harmony/security/x509/CertificateIssuer;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CertificateIssuer.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private issuer:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer$1;

    .line 52
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    .line 51
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CertificateIssuer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralName;)V
    .locals 1
    .parameter "issuer"

    .prologue
    .line 76
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateIssuer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 70
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "Certificate Issuer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Unparseable (incorrect!) extension value:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-super {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateIssuer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method
