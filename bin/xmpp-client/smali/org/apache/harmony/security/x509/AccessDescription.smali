.class public Lorg/apache/harmony/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

.field private final accessMethod:Ljava/lang/String;

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/security/x509/AccessDescription$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 50
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    .line 49
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AccessDescription$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;)V
    .locals 0
    .parameter "accessMethod"
    .parameter "accessLocation"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[B)V
    .locals 0
    .parameter "accessMethod"
    .parameter "accessLocation"
    .parameter "encoding"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    .line 79
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[BLorg/apache/harmony/security/x509/AccessDescription;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/AccessDescription;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/AccessDescription;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/AccessDescription;)Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method


# virtual methods
.method public getAccessLocation()Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "\n-- AccessDescription:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "\naccessMethod:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "\naccessLocation:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "\n-- AccessDescription END\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
