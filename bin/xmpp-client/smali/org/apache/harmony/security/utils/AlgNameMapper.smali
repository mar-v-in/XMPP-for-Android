.class public Lorg/apache/harmony/security/utils/AlgNameMapper;
.super Ljava/lang/Object;
.source "AlgNameMapper.java"


# static fields
.field private static final alg2OidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final algAliasesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final knownAlgMappings:[[Ljava/lang/String;

.field private static final oid2AlgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serviceName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 42
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Cipher"

    aput-object v5, v4, v3

    .line 43
    const-string v5, "AlgorithmParameters"

    aput-object v5, v4, v9

    .line 44
    const-string v5, "Signature"

    aput-object v5, v4, v8

    .line 42
    sput-object v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    .line 51
    const/16 v4, 0x14

    new-array v4, v4, [[Ljava/lang/String;

    .line 52
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "1.2.840.10040.4.1"

    aput-object v6, v5, v3

    const-string v6, "DSA"

    aput-object v6, v5, v9

    aput-object v5, v4, v3

    .line 53
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "1.2.840.10040.4.3"

    aput-object v6, v5, v3

    const-string v6, "SHA1withDSA"

    aput-object v6, v5, v9

    aput-object v5, v4, v9

    .line 54
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "1.2.840.113549.1.1.1"

    aput-object v6, v5, v3

    const-string v6, "RSA"

    aput-object v6, v5, v9

    aput-object v5, v4, v8

    .line 55
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "1.2.840.113549.1.1.2"

    aput-object v6, v5, v3

    const-string v6, "MD2withRSA"

    aput-object v6, v5, v9

    aput-object v5, v4, v7

    const/4 v5, 0x4

    .line 56
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.1.4"

    aput-object v7, v6, v3

    const-string v7, "MD5withRSA"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 57
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.1.5"

    aput-object v7, v6, v3

    const-string v7, "SHA1withRSA"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 58
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.3.1"

    aput-object v7, v6, v3

    const-string v7, "DiffieHellman"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 59
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.5.3"

    aput-object v7, v6, v3

    const-string v7, "pbeWithMD5AndDES-CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 60
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.12.1.3"

    aput-object v7, v6, v3

    const-string v7, "pbeWithSHAAnd3-KeyTripleDES-CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 61
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.1.12.1.6"

    aput-object v7, v6, v3

    const-string v7, "pbeWithSHAAnd40BitRC2-CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 62
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.2"

    aput-object v7, v6, v3

    const-string v7, "RC2-CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xb

    .line 63
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.3"

    aput-object v7, v6, v3

    const-string v7, "RC2-EBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xc

    .line 64
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.4"

    aput-object v7, v6, v3

    const-string v7, "RC4"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xd

    .line 65
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.5"

    aput-object v7, v6, v3

    const-string v7, "RC4WithMAC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xe

    .line 66
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.6"

    aput-object v7, v6, v3

    const-string v7, "DESx-CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xf

    .line 67
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.7"

    aput-object v7, v6, v3

    const-string v7, "TripleDES-CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x10

    .line 68
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.8"

    aput-object v7, v6, v3

    const-string v7, "rc5CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x11

    .line 69
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.9"

    aput-object v7, v6, v3

    const-string v7, "RC5-CBC"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x12

    .line 70
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "1.2.840.113549.3.10"

    aput-object v7, v6, v3

    const-string v7, "DESCDMF"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x13

    .line 71
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "2.23.42.9.11.4.1"

    aput-object v7, v6, v3

    const-string v7, "ECDSA"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    .line 51
    sput-object v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    .line 74
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    .line 76
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    .line 78
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    .line 81
    sget-object v5, Lorg/apache/harmony/security/utils/AlgNameMapper;->knownAlgMappings:[[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    .local v0, algUC:Ljava/lang/String;
    .local v1, element:[Ljava/lang/String;
    :goto_0
    if-lt v4, v6, :cond_0

    .line 94
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    .line 95
    .local v2, pl:[Ljava/security/Provider;
    array-length v4, v2

    .end local v1           #element:[Ljava/lang/String;
    :goto_1
    if-lt v3, v4, :cond_1

    .line 39
    return-void

    .line 81
    .end local v2           #pl:[Ljava/security/Provider;
    .restart local v1       #element:[Ljava/lang/String;
    :cond_0
    aget-object v1, v5, v4

    .line 82
    aget-object v7, v1, v9

    .end local v0           #algUC:Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0       #algUC:Ljava/lang/String;
    sget-object v7, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    aget-object v8, v1, v3

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v7, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    aget-object v8, v1, v3

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v7, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    aget-object v8, v1, v9

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v1           #element:[Ljava/lang/String;
    .restart local v2       #pl:[Ljava/security/Provider;
    :cond_1
    aget-object v1, v2, v3

    .line 96
    .local v1, element:Ljava/security/Provider;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->selectEntries(Ljava/security/Provider;)V

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method public static dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alg2OidMap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\noid2AlgMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\nalgAliasesMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStandardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "algName"

    .prologue
    .line 123
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isOID(Ljava/lang/String;)Z
    .locals 2
    .parameter "alias"

    .prologue
    .line 137
    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static map2AlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "oid"

    .prologue
    .line 155
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, algUC:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static map2OID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "algName"

    .prologue
    .line 169
    sget-object v0, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "oid"

    .prologue
    .line 180
    const-string v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 180
    .end local p0
    :cond_0
    return-object p0
.end method

.method private static selectEntries(Ljava/security/Provider;)V
    .locals 16
    .parameter "p"

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Ljava/security/Provider;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 192
    .local v4, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    sget-object v11, Lorg/apache/harmony/security/utils/AlgNameMapper;->serviceName:[Ljava/lang/String;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v12, :cond_0

    .line 227
    return-void

    .line 192
    :cond_0
    aget-object v9, v11, v10

    .line 193
    .local v9, service:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Alg.Alias."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, keyPrfix2find:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 192
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 195
    .local v7, me:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 196
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 197
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, alias:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, alg:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, algUC:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 201
    const-string v14, "OID."

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 202
    const/4 v14, 0x4

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    :cond_3
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    .line 206
    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 207
    .local v8, oid2AlgContains:Z
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    .line 208
    invoke-interface {v14, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 209
    .local v1, alg2OidContains:Z
    if-eqz v8, :cond_4

    if-nez v1, :cond_1

    .line 210
    :cond_4
    if-nez v8, :cond_5

    .line 211
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->oid2AlgMap:Ljava/util/Map;

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_5
    if-nez v1, :cond_6

    .line 214
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->alg2OidMap:Ljava/util/Map;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_6
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    .end local v1           #alg2OidContains:Z
    .end local v8           #oid2AlgContains:Z
    :cond_7
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    .line 221
    invoke-static {v3}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 220
    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 222
    sget-object v14, Lorg/apache/harmony/security/utils/AlgNameMapper;->algAliasesMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/harmony/security/Util;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
