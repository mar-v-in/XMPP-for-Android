.class public Lorg/apache/harmony/auth/jgss/GSSManagerImpl;
.super Lorg/ietf/jgss/GSSManager;
.source "GSSManagerImpl.java"


# static fields
.field private static DEFAULT_API:Lorg/apache/harmony/auth/jgss/GSSMechSpi; = null

.field private static DEFAULT_MECH:Lorg/ietf/jgss/Oid; = null

.field private static DEFAULT_PROVIDER:Ljava/security/Provider; = null

.field private static final JGSSAPI:Ljava/lang/String; = "GssApiMechanism."


# instance fields
.field private final spis:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lorg/ietf/jgss/Oid;",
            "Lorg/apache/harmony/auth/jgss/GSSMechSpi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosProvider;

    .line 40
    const-string v1, "kerberos provider"

    const-wide/16 v2, 0x0

    const-string v4, ""

    .line 39
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosProvider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->DEFAULT_PROVIDER:Ljava/security/Provider;

    .line 42
    new-instance v0, Lorg/apache/harmony/auth/jgss/kerberos/KerberosSpiImpl;

    invoke-direct {v0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosSpiImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->DEFAULT_API:Lorg/apache/harmony/auth/jgss/GSSMechSpi;

    .line 46
    :try_start_0
    new-instance v0, Lorg/ietf/jgss/Oid;

    const-string v1, "1.2.840.113554.1.2.2"

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->DEFAULT_MECH:Lorg/ietf/jgss/Oid;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/ietf/jgss/GSSManager;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->spis:Ljava/util/Hashtable;

    .line 57
    sget-object v0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->DEFAULT_PROVIDER:Ljava/security/Provider;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->addProviderAtFront(Ljava/security/Provider;Lorg/ietf/jgss/Oid;)V

    .line 58
    return-void
.end method

.method private enumApisFromProvider(Ljava/security/Provider;Lorg/ietf/jgss/Oid;Z)V
    .locals 9
    .parameter "p"
    .parameter "mech"
    .parameter "override"

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/security/Provider;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 180
    return-void

    .line 146
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 147
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    .local v5, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 151
    .local v6, value:Ljava/lang/String;
    const-string v8, "GssApiMechanism."

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 155
    const-string v8, "GssApiMechanism."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, currentMechName:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/ietf/jgss/Oid;

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v0, currentMech:Lorg/ietf/jgss/Oid;
    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 168
    :cond_2
    if-nez p3, :cond_3

    iget-object v8, p0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->spis:Ljava/util/Hashtable;

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 174
    :cond_3
    :try_start_1
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    .local v4, gssApi:Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    iget-object v8, p0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->spis:Ljava/util/Hashtable;

    invoke-virtual {v8, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v0           #currentMech:Lorg/ietf/jgss/Oid;
    .end local v4           #gssApi:Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    :catch_0
    move-exception v2

    .line 161
    .local v2, e:Lorg/ietf/jgss/GSSException;
    goto :goto_0

    .line 175
    .end local v2           #e:Lorg/ietf/jgss/GSSException;
    .restart local v0       #currentMech:Lorg/ietf/jgss/Oid;
    :catch_1
    move-exception v2

    .line 176
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public addProviderAtEnd(Ljava/security/Provider;Lorg/ietf/jgss/Oid;)V
    .locals 1
    .parameter "p"
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->enumApisFromProvider(Ljava/security/Provider;Lorg/ietf/jgss/Oid;Z)V

    .line 63
    return-void
.end method

.method public addProviderAtFront(Ljava/security/Provider;Lorg/ietf/jgss/Oid;)V
    .locals 1
    .parameter "p"
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->enumApisFromProvider(Ljava/security/Provider;Lorg/ietf/jgss/Oid;Z)V

    .line 68
    return-void
.end method

.method public createContext(Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;
    .locals 1
    .parameter "myCred"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;
    .locals 1
    .parameter "peer"
    .parameter "mech"
    .parameter "myCred"
    .parameter "lifetime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public createContext([B)Lorg/ietf/jgss/GSSContext;
    .locals 1
    .parameter "interProcessToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCredential(I)Lorg/ietf/jgss/GSSCredential;
    .locals 1
    .parameter "usage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCredential(Lorg/ietf/jgss/GSSName;ILorg/ietf/jgss/Oid;I)Lorg/ietf/jgss/GSSCredential;
    .locals 1
    .parameter "name"
    .parameter "lifetime"
    .parameter "mech"
    .parameter "usage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCredential(Lorg/ietf/jgss/GSSName;I[Lorg/ietf/jgss/Oid;I)Lorg/ietf/jgss/GSSCredential;
    .locals 1
    .parameter "name"
    .parameter "lifetime"
    .parameter "mechs"
    .parameter "usage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method createCredentialElement(Lorg/ietf/jgss/GSSName;IILorg/ietf/jgss/Oid;I)Lorg/apache/harmony/auth/jgss/GSSCredentialElement;
    .locals 1
    .parameter "name"
    .parameter "initLifetime"
    .parameter "acceptLifetime"
    .parameter "mech"
    .parameter "usage"

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .locals 1
    .parameter "nameStr"
    .parameter "nameType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p2, :cond_0

    sget-object v0, Lorg/ietf/jgss/GSSName;->NT_EXPORT_NAME:Lorg/ietf/jgss/Oid;

    invoke-virtual {p2, v0}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p1}, Lorg/apache/harmony/auth/jgss/GSSUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/harmony/auth/jgss/GSSNameImpl;->importFromString([BLorg/apache/harmony/auth/jgss/GSSManagerImpl;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->DEFAULT_API:Lorg/apache/harmony/auth/jgss/GSSMechSpi;

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/auth/jgss/GSSMechSpi;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    goto :goto_0
.end method

.method public createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .locals 1
    .parameter "nameStr"
    .parameter "nameType"
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/ietf/jgss/GSSName;->canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    return-object v0
.end method

.method public createName([BLorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .locals 2
    .parameter "name"
    .parameter "nameType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 118
    if-eqz p2, :cond_0

    sget-object v0, Lorg/ietf/jgss/GSSName;->NT_EXPORT_NAME:Lorg/ietf/jgss/Oid;

    invoke-virtual {p2, v0}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1, p0}, Lorg/apache/harmony/auth/jgss/GSSNameImpl;->importFromString([BLorg/apache/harmony/auth/jgss/GSSManagerImpl;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->DEFAULT_API:Lorg/apache/harmony/auth/jgss/GSSMechSpi;

    invoke-static {p1}, Lorg/apache/harmony/auth/jgss/GSSUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/auth/jgss/GSSMechSpi;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    goto :goto_0
.end method

.method public createName([BLorg/ietf/jgss/Oid;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .locals 1
    .parameter "name"
    .parameter "nameType"
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lorg/apache/harmony/auth/jgss/GSSUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    return-object v0
.end method

.method getDefaultMech()Lorg/ietf/jgss/Oid;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->DEFAULT_MECH:Lorg/ietf/jgss/Oid;

    return-object v0
.end method

.method public getMechs()[Lorg/ietf/jgss/Oid;
    .locals 7

    .prologue
    .line 188
    iget-object v5, p0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->spis:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 189
    .local v4, oids:Ljava/util/Set;,"Ljava/util/Set<Lorg/ietf/jgss/Oid;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array v2, v5, [Lorg/ietf/jgss/Oid;

    .line 190
    .local v2, mechs:[Lorg/ietf/jgss/Oid;
    const/4 v0, 0x0

    .line 191
    .local v0, i:I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 194
    return-object v2

    .line 191
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ietf/jgss/Oid;

    .line 192
    .local v3, oid:Lorg/ietf/jgss/Oid;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v3, v2, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0
.end method

.method public getMechsForName(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;
    .locals 13
    .parameter "nameType"

    .prologue
    const/4 v8, 0x0

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v3, mechs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/ietf/jgss/Oid;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->getMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v5

    .line 201
    .local v5, oids:[Lorg/ietf/jgss/Oid;
    array-length v10, v5

    move v9, v8

    :goto_0
    if-lt v9, v10, :cond_0

    .line 215
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lorg/ietf/jgss/Oid;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/ietf/jgss/Oid;

    return-object v7

    .line 201
    :cond_0
    aget-object v4, v5, v9

    .line 202
    .local v4, oid:Lorg/ietf/jgss/Oid;
    iget-object v7, p0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->spis:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSMechSpi;

    .line 203
    .local v0, api:Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSMechSpi;->getNameMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v2

    .line 204
    .local v2, mechNames:[Lorg/ietf/jgss/Oid;
    const/4 v6, 0x0

    .line 205
    .local v6, support:Z
    array-length v11, v2

    move v7, v8

    :goto_1
    if-lt v7, v11, :cond_2

    .line 211
    :goto_2
    if-eqz v6, :cond_1

    .line 212
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 205
    :cond_2
    aget-object v1, v2, v7

    .line 206
    .local v1, mechName:Lorg/ietf/jgss/Oid;
    invoke-virtual {v1, p1}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 207
    const/4 v6, 0x1

    .line 208
    goto :goto_2

    .line 205
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public getNamesForMech(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;
    .locals 2
    .parameter "mech"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->getSpi(Lorg/ietf/jgss/Oid;)Lorg/apache/harmony/auth/jgss/GSSMechSpi;

    move-result-object v0

    .line 221
    .local v0, api:Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    invoke-interface {v0}, Lorg/apache/harmony/auth/jgss/GSSMechSpi;->getNameMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v1

    return-object v1
.end method

.method getSpi(Lorg/ietf/jgss/Oid;)Lorg/apache/harmony/auth/jgss/GSSMechSpi;
    .locals 1
    .parameter "mech"

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSManagerImpl;->spis:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSMechSpi;

    return-object v0
.end method
