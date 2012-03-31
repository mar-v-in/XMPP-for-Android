.class Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "KDCRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "$anonymous0"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;->setOptional(I)V

    .line 110
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;->setOptional(I)V

    .line 111
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;->setOptional(I)V

    .line 112
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;->setOptional(I)V

    .line 113
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;->setOptional(I)V

    .line 114
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;->setOptional(I)V

    .line 115
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;

    .line 125
    .local v1, request:Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;
    new-array v2, v7, [B

    aput-byte v5, v2, v3

    aput-byte v6, v2, v4

    aput-object v2, p2, v3

    .line 128
    #getter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    invoke-static {v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->access$0(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    move-result-object v2

    aput-object v2, p2, v4

    .line 129
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->realm:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 130
    #getter for: Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    invoke-static {v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->access$2(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    move-result-object v2

    aput-object v2, p2, v5

    .line 135
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    aput-object v2, p2, v6

    .line 140
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v7

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const/16 v2, 0x8

    aput-object v0, p2, v2

    .line 154
    return-void
.end method
