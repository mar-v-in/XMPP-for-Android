.class public Lorg/apache/harmony/security/x509/AlternativeName;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "AlternativeName.java"


# static fields
.field public static final ISSUER:Z = false

.field public static final SUBJECT:Z = true


# instance fields
.field private final alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

.field private final which:Z


# direct methods
.method public constructor <init>(ZLorg/apache/harmony/security/x509/GeneralNames;)V
    .locals 0
    .parameter "which"
    .parameter "alternativeNames"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 62
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    .line 63
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 64
    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 1
    .parameter "which"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 50
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    .line 51
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralNames;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 52
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    if-eqz v0, :cond_0

    const-string v0, "Subject"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 73
    const-string v1, " Alternative Names [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    return-void

    .line 72
    :cond_0
    const-string v0, "Issuer"

    goto :goto_0
.end method

.method public getAlternativeNames()Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    return-object v0
.end method
