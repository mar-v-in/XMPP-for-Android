.class public Lorg/apache/harmony/security/x509/BasicConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "BasicConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private cA:Z

.field private pathLenConstraint:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 56
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 55
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 45
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .parameter "cA"
    .parameter "pathLenConstraint"

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->cA:Z

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    .line 83
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->cA:Z

    .line 84
    iput p2, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    .line 85
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 48
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->cA:Z

    .line 50
    const v1, 0x7fffffff

    iput v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    .line 92
    sget-object v1, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 93
    .local v0, values:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->cA:Z

    .line 94
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 95
    new-instance v2, Ljava/math/BigInteger;

    aget-object v1, v0, v3

    check-cast v1, [B

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "BasicConstraints [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 106
    const-string v1, "  CA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->cA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 107
    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "pathLenConstraint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 108
    iget v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 109
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    return-void
.end method

.method public getCA()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->cA:Z

    return v0
.end method

.method public getEncoded()[B
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->cA:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 123
    iget v3, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v1, v2

    .line 122
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    return-object v0
.end method

.method public getPathLenConstraint()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    return v0
.end method
