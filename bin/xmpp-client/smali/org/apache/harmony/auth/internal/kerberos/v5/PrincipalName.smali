.class public Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
.super Ljava/lang/Object;
.source "PrincipalName.java"


# static fields
.field static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final NT_ENTERPRISE:I = 0xa

.field public static final NT_PRINCIPAL:I = 0x1

.field public static final NT_SMTP_NAME:I = 0x7

.field public static final NT_SRV_HST:I = 0x3

.field public static final NT_SRV_INST:I = 0x2

.field public static final NT_SRV_XHST:I = 0x4

.field public static final NT_UID:I = 0x5

.field public static final NT_UNKNOWN:I = 0x0

.field public static final NT_X500_PRINCIPAL:I = 0x6


# instance fields
.field private final name:[Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 72
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 73
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 74
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 73
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 71
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "str"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->type:I

    .line 104
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 106
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    .line 114
    :cond_0
    return-void

    .line 108
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v1, strTknzr:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "name"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->type:I

    .line 118
    iput-object p2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static instanceOf([B)Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    if-nez v3, :cond_2

    move v1, v2

    .line 128
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 131
    check-cast v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 133
    .local v0, that:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    iget v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->type:I

    iget v4, v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public getName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->type:I

    iget-object v1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 173
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v2, ", type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 170
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->name:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
