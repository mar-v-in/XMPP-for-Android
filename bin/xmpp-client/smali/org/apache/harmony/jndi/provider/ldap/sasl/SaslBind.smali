.class public Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;
.super Ljava/lang/Object;
.source "SaslBind.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;
    }
.end annotation


# static fields
.field public static final CRAM_MD5:Ljava/lang/String; = "CRAM-MD5"

.field public static final DIGEST_MD5:Ljava/lang/String; = "DIGEST-MD5"

.field public static final EXTERNAL:Ljava/lang/String; = "EXTERNAL"

.field public static final GSSAPI:Ljava/lang/String; = "GSSAPI"

.field private static supportedSaslMechs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

.field private saslMech:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->supportedSaslMechs:Ljava/util/Set;

    .line 59
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->supportedSaslMechs:Ljava/util/Set;

    const-string v1, "DIGEST-MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->supportedSaslMechs:Ljava/util/Set;

    const-string v1, "CRAM-MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->supportedSaslMechs:Ljava/util/Set;

    const-string v1, "GSSAPI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->supportedSaslMechs:Ljava/util/Set;

    const-string v1, "EXTERNAL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method private externalValueAuthMech(Ljava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;
    .locals 2
    .parameter "env"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const-string v0, "java.naming.security.authentication"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 186
    const-string v0, "java.naming.security.principal"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->None:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    .line 205
    :goto_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    goto :goto_0

    .line 189
    :cond_1
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->Simple:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    goto :goto_1

    .line 191
    :cond_2
    const-string v0, "java.naming.security.authentication"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->None:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    goto :goto_1

    .line 194
    :cond_3
    const-string v0, "java.naming.security.authentication"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    const-string v1, "simple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->Simple:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    goto :goto_1

    .line 198
    :cond_4
    const-string v0, "java.naming.security.authentication"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->valueSaslMech(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->SASL:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    goto :goto_1

    .line 201
    :cond_5
    new-instance v1, Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;

    .line 202
    const-string v0, "java.naming.security.authentication"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-direct {v1, v0}, Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRealm(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "creds"

    .prologue
    .line 213
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, credsProps:[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 223
    const-string v2, ""

    :goto_1
    return-object v2

    .line 214
    :cond_0
    aget-object v0, v1, v3

    .line 215
    .local v0, credsProp:Ljava/lang/String;
    const-string v5, "realm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    const/4 v3, 0x7

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 217
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, realm:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    .end local v2           #realm:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private valueSaslMech(Ljava/lang/String;)Z
    .locals 6
    .parameter "auth"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, flag:Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, saslMechs:[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 251
    :goto_1
    return v0

    .line 242
    :cond_0
    aget-object v1, v2, v3

    .line 243
    .local v1, saslMech2:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v5, ""

    if-eq v1, v5, :cond_1

    .line 244
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->supportedSaslMechs:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    const/4 v0, 0x1

    .line 246
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->saslMech:Ljava/lang/String;

    goto :goto_1

    .line 242
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doSaslBindOperation(Ljava/util/Hashtable;Lorg/apache/harmony/jndi/provider/ldap/LdapClient;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 12
    .parameter "env"
    .parameter "client"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->externalValueAuthMech(Ljava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->None:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->Simple:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    if-ne v0, v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v9

    .line 102
    :cond_1
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, host:Ljava/lang/String;
    const-string v0, "java.naming.security.sasl.callback"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 107
    const-string v0, "java.naming.security.sasl.callback"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/callback/CallbackHandler;

    move-object v5, v0

    .line 111
    .local v5, cbh:Ljavax/security/auth/callback/CallbackHandler;
    :goto_1
    const-string v1, ""

    .line 112
    .local v1, authorizationId:Ljava/lang/String;
    const-string v0, "java.naming.security.sasl.authorizationId"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    const-string v0, "java.naming.security.sasl.authorizationId"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #authorizationId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 121
    .restart local v1       #authorizationId:Ljava/lang/String;
    :goto_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->saslMech:Ljava/lang/String;

    aput-object v2, v0, v11

    const-string v2, "ldap"

    move-object v4, p1

    .line 120
    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/javax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v10

    .line 124
    .local v10, saslClnt:Lorg/apache/harmony/javax/security/sasl/SaslClient;
    if-nez v10, :cond_4

    .line 125
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "SASL client not available"

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    .end local v1           #authorizationId:Ljava/lang/String;
    .end local v5           #cbh:Ljavax/security/auth/callback/CallbackHandler;
    .end local v10           #saslClnt:Lorg/apache/harmony/javax/security/sasl/SaslClient;
    :cond_2
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;

    invoke-direct {v5, p1}, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;-><init>(Ljava/util/Hashtable;)V

    goto :goto_1

    .line 116
    .restart local v1       #authorizationId:Ljava/lang/String;
    .restart local v5       #cbh:Ljavax/security/auth/callback/CallbackHandler;
    :cond_3
    const-string v0, "java.naming.security.principal"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #authorizationId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #authorizationId:Ljava/lang/String;
    goto :goto_2

    .line 129
    .restart local v10       #saslClnt:Lorg/apache/harmony/javax/security/sasl/SaslClient;
    :cond_4
    invoke-interface {v10}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->hasInitialResponse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    new-array v0, v11, [B

    invoke-interface {v10, v0}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v9

    .line 134
    .local v9, response:[B
    :cond_5
    new-instance v6, Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    const-string v0, ""

    const-string v2, ""

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->saslMech:Ljava/lang/String;

    invoke-direct {v6, v0, v2, v4, v9}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 135
    .local v6, bind:Lorg/apache/harmony/jndi/provider/ldap/BindOp;
    invoke-virtual {p2, v6, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 136
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v8

    .line 140
    .local v8, res:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    const-string v0, "DIGEST-MD5"

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->saslMech:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    instance-of v0, v5, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;

    if-eqz v0, :cond_6

    .line 142
    check-cast v5, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;

    .end local v5           #cbh:Ljavax/security/auth/callback/CallbackHandler;
    new-instance v0, Ljava/lang/String;

    .line 143
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getServerSaslCreds()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 142
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->getRealm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->setRealm(Ljava/lang/String;)V

    .line 147
    :cond_6
    :goto_3
    invoke-interface {v10}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->isComplete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 148
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_8

    .line 149
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    :cond_7
    :goto_4
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v9

    goto/16 :goto_0

    .line 153
    :cond_8
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getServerSaslCreds()[B

    move-result-object v7

    .line 154
    .local v7, challenge:[B
    invoke-interface {v10, v7}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v9

    .line 157
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_a

    .line 159
    if-eqz v9, :cond_9

    .line 161
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "Protocol error in SASL session"

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 170
    :cond_a
    invoke-virtual {v6, v9}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->setSaslCredentials([B)V

    .line 171
    invoke-virtual {p2, v6, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 172
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v8

    goto :goto_3
.end method

.method public getAuthMech()Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    return-object v0
.end method

.method public valueAuthMech(Ljava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;
    .locals 1
    .parameter "env"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->externalValueAuthMech(Ljava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    move-result-object v0

    return-object v0
.end method
