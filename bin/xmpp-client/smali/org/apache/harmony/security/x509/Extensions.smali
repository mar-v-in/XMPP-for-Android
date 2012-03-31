.class public Lorg/apache/harmony/security/x509/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static SUPPORTED_CRITICAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private critical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private hasUnsupported:Z

.field private noncritical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    const-string v2, "2.5.29.15"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2.5.29.19"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2.5.29.32"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2.5.29.17"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 56
    const-string v2, "2.5.29.30"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2.5.29.36"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2.5.29.37"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2.5.29.54"

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 53
    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    .line 74
    new-instance v0, Lorg/apache/harmony/security/x509/Extensions$1;

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extensions$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, extensions:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/Extension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 103
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    return-object v0
.end method

.method private makeOidsLists()V
    .locals 5

    .prologue
    .line 250
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v4, :cond_1

    .line 268
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 254
    .local v3, size:I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    .line 255
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    .line 256
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 257
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 258
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, oid:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getCritical()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 261
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Z

    .line 263
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addExtension(Lorg/apache/harmony/security/x509/Extension;)V
    .locals 3
    .parameter "extn"

    .prologue
    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    .line 114
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 117
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, oid:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Extension;->getCritical()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    sget-object v1, Lorg/apache/harmony/security/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Z

    .line 127
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v0           #oid:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 129
    .restart local v0       #oid:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 138
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v3, :cond_1

    .line 147
    :cond_0
    return-void

    .line 141
    :cond_1
    const/4 v1, 0x1

    .line 142
    .local v1, num:I
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 143
    .local v0, extension:Lorg/apache/harmony/security/x509/Extension;
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v2, v1, 0x1

    .end local v1           #num:I
    .local v2, num:I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 144
    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/Extension;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    move v1, v2

    .end local v2           #num:I
    .restart local v1       #num:I
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "exts"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    instance-of v3, p1, Lorg/apache/harmony/security/x509/Extensions;

    if-nez v3, :cond_0

    .line 155
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 154
    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    .line 155
    .local v0, extns:Lorg/apache/harmony/security/x509/Extensions;
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 156
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    move v2, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_3
    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v1, v2

    goto :goto_1

    .line 158
    :cond_5
    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    iget-object v4, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    .line 159
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public getCriticalExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->encoding:[B

    return-object v0
.end method

.method public getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;
    .locals 4
    .parameter "oid"

    .prologue
    .line 194
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 195
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    .line 197
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    .line 199
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/x509/Extension;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/x509/Extension;>;"
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/Extension;

    goto :goto_0

    .line 201
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/x509/Extension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 202
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public getNonCriticalExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->noncritical:Ljava/util/Set;

    return-object v0
.end method

.method public hasUnsupportedCritical()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->critical:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extensions;->makeOidsLists()V

    .line 242
    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupported:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, hashcode:I
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 235
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public valueOfBasicConstrains()I
    .locals 3

    .prologue
    .line 293
    const-string v2, "2.5.29.19"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v1

    .line 294
    .local v1, extn:Lorg/apache/harmony/security/x509/Extension;
    const/4 v0, 0x0

    .line 295
    .local v0, bc:Lorg/apache/harmony/security/x509/BasicConstraints;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extension;->getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;

    move-result-object v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    const v2, 0x7fffffff

    .line 298
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/BasicConstraints;->getPathLenConstraint()I

    move-result v2

    goto :goto_0
.end method

.method public valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const-string v1, "2.5.29.29"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 318
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 321
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/CertificateIssuer;

    .line 322
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const-string v1, "2.5.29.37"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 346
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    .line 347
    const/4 v1, 0x0

    .line 349
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    .line 350
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfIssuerAlternativeName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    const-string v1, "2.5.29.18"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 370
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    .line 371
    const/4 v1, 0x0

    .line 373
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralNames;

    .line 374
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfKeyUsage()[Z
    .locals 3

    .prologue
    .line 405
    const-string v2, "2.5.29.15"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 406
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    const/4 v1, 0x0

    .line 407
    .local v1, kUsage:Lorg/apache/harmony/security/x509/KeyUsage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;

    move-result-object v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    const/4 v2, 0x0

    .line 410
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/KeyUsage;->getKeyUsage()[Z

    move-result-object v2

    goto :goto_0
.end method

.method public valueOfSubjectAlternativeName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    const-string v1, "2.5.29.17"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 430
    .local v0, extn:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    .line 433
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getExtnValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralNames;

    .line 434
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralNames;->getPairsList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
