.class public Lorg/apache/harmony/luni/util/OIDDatabase;
.super Ljava/lang/Object;
.source "OIDDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    }
.end annotation


# static fields
.field private static instance:Lorg/apache/harmony/luni/util/OIDDatabase;


# instance fields
.field private final algorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final oids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/OIDDatabase;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/OIDDatabase;->instance:Lorg/apache/harmony/luni/util/OIDDatabase;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->oids:Ljava/util/Set;

    .line 58
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->algorithms:Ljava/util/Set;

    .line 67
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "MD2withRSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 72
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "MD5withRSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 77
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "SHA1withRSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 82
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.10040.4.3"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "SHA1withDSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 89
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.3.14.3.2.26"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "SHA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v1, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "SHA-1"

    invoke-direct {v1, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, alg2:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 93
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 96
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.113549.2.5"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "MD5"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 103
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.113549.1.1.1"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "RSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 108
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.10040.4.1"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v3, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    const-string v4, "1.3.14.3.2.12"

    invoke-direct {v3, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, oid2:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "DSA"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 112
    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 115
    new-instance v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v2           #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "1.2.840.10046.2.1"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v2       #oid:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    new-instance v0, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .end local v0           #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    const-string v4, "DiffieHellman"

    invoke-direct {v0, v4}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v0       #alg:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-direct {p0, v2, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 118
    return-void
.end method

.method private getAllEquivalents(Ljava/lang/String;Ljava/util/Iterator;)Ljava/util/Set;
    .locals 6
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    const/4 v4, 0x0

    .line 132
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 145
    return-object v4

    .line 133
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .line 134
    .local v2, element:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->getAllEquivalents()Ljava/util/Set;

    move-result-object v0

    .line 137
    .local v0, allMatchingDBEntries:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    new-instance v4, Ljava/util/HashSet;

    .end local v4           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 138
    .restart local v4       #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    .local v1, dbIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;

    .line 141
    .local v3, matchingEntry:Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;
    invoke-virtual {v3}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance()Lorg/apache/harmony/luni/util/OIDDatabase;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/harmony/luni/util/OIDDatabase;->instance:Lorg/apache/harmony/luni/util/OIDDatabase;

    return-object v0
.end method

.method private wireTogether(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V
    .locals 1
    .parameter "oidValue"
    .parameter "algorithmValue"

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->oids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->algorithms:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p1, p2}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->addEquivalent(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 182
    invoke-virtual {p2, p1}, Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;->addEquivalent(Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;)V

    .line 183
    return-void
.end method


# virtual methods
.method public getAllAlgorithmsForOID(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .parameter "oid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->oids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllEquivalents(Ljava/lang/String;Ljava/util/Iterator;)Ljava/util/Set;

    move-result-object v1

    .line 124
    if-nez v1, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown OID : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_0
    return-object v1
.end method

.method public getAllOIDsForAlgorithm(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/util/OIDDatabase;->algorithms:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/util/OIDDatabase$DBEntry;>;"
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllEquivalents(Ljava/lang/String;Ljava/util/Iterator;)Ljava/util/Set;

    move-result-object v1

    .line 152
    if-nez v1, :cond_0

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported algorithm : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    return-object v1
.end method

.method public getFirstAlgorithmForOID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "oid"

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllAlgorithmsForOID(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 165
    .restart local v1       #result:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getFirstOIDForAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "algorithm"

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/util/OIDDatabase;->getAllOIDsForAlgorithm(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 171
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 172
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 175
    .restart local v1       #result:Ljava/lang/String;
    :cond_0
    return-object v1
.end method
