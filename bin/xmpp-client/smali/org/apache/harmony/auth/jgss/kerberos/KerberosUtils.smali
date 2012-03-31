.class public Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;
.super Ljava/lang/Object;
.source "KerberosUtils.java"


# static fields
.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_GSSEXCEPTION_MAJOR_CODE:I = 0x3

.field public static final DEFAULT_GSSEXCEPTION_MINOR_CODE:I = 0x0

.field public static final KERBEROS_CONTEXT_ACCEPT:Ljava/lang/String; = "org.apache.harmony.auth.jgss.accept"

.field public static final KERBEROS_CONTEXT_INIT:Ljava/lang/String; = "org.apache.harmony.auth.jgss.initiate"

.field public static final KERBEROS_TOOLBOX_PROVIDER:Ljava/lang/String; = "org.apache.harmony.auth.jgss.kerberos.toolbox.KerberosToolboxImpl"

.field public static final KRB5_MECH:Lorg/ietf/jgss/Oid; = null

.field public static final KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid; = null

.field public static final SERVICE_PERMISSION_ACTION_ACCEPT:Ljava/lang/String; = "accept"

.field public static final SERVICE_PERMISSION_ACTION_INITIATE:Ljava/lang/String; = "initiate"

.field public static final SUPPORTED_KEY_ENCRYPT:[Ljava/lang/String;

.field public static final SUPPORTED_NAME_MECHS:[Lorg/ietf/jgss/Oid;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "DES"

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->SUPPORTED_KEY_ENCRYPT:[Ljava/lang/String;

    .line 69
    :try_start_0
    new-instance v1, Lorg/ietf/jgss/Oid;

    const-string v2, "1.2.840.113554.1.2.2"

    invoke-direct {v1, v2}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_MECH:Lorg/ietf/jgss/Oid;

    .line 70
    new-instance v1, Lorg/ietf/jgss/Oid;

    const-string v2, "1.2.840.113554.1.2.2.1"

    invoke-direct {v1, v2}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/ietf/jgss/Oid;

    sget-object v2, Lorg/ietf/jgss/GSSName;->NT_USER_NAME:Lorg/ietf/jgss/Oid;

    aput-object v2, v1, v3

    .line 76
    sget-object v2, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lorg/ietf/jgss/GSSName;->NT_EXPORT_NAME:Lorg/ietf/jgss/Oid;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 77
    sget-object v3, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->KRB5_PRINCIPAL_NAMETYPE:Lorg/ietf/jgss/Oid;

    aput-object v3, v1, v2

    .line 75
    sput-object v1, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->SUPPORTED_NAME_MECHS:[Lorg/ietf/jgss/Oid;

    .line 42
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Lorg/ietf/jgss/GSSException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-static {p0, p1, p2}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getTicketFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-static {p0, p1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKeysFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    move-result-object v0

    return-object v0
.end method

.method public static checkServerKeyServicePermission(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->getPrincipal()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    .line 82
    const-string v1, "accept"

    .line 81
    invoke-static {v0, v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->checkServicePermission(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static checkServicePermission(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Ljava/lang/String;)V
    .locals 3
    .parameter "principal"
    .parameter "action"

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 88
    .local v1, sm:Ljava/lang/SecurityManager;
    if-nez v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;

    .line 92
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-direct {v0, v2, p1}, Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, servicePermission:Lorg/apache/harmony/javax/security/auth/kerberos/ServicePermission;
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_0
.end method

.method public static checkTGTServicePermission(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;)V
    .locals 2
    .parameter "tgt"

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->getServer()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v0

    .line 98
    const-string v1, "initiate"

    .line 97
    invoke-static {v0, v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->checkServicePermission(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private static getKerberosTicketFromContext(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 3
    .parameter "clientPrincipal"
    .parameter "serverPrincipal"

    .prologue
    .line 104
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 106
    .local v0, acc:Ljava/security/AccessControlContext;
    new-instance v2, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;

    invoke-direct {v2, p0, p1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$1;-><init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)V

    .line 105
    invoke-static {v2, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    .line 117
    .local v1, tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    if-eqz v1, :cond_0

    .line 118
    invoke-static {v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->checkTGTServicePermission(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;)V

    .line 120
    :cond_0
    return-object v1
.end method

.method public static getKerberosToolbox(Ljava/lang/String;)Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosToolboxSpi;
    .locals 6
    .parameter "kdcName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    const-string v2, "org.apache.harmony.auth.jgss.kerberos.toolbox.KerberosToolboxImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    .local v0, cls:Ljava/lang/Class;
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 127
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosToolboxSpi;

    return-object v2
.end method

.method public static getKeys(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .locals 2
    .parameter "serverPrincipal"

    .prologue
    .line 131
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    .line 132
    .local v0, keys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    if-eqz p0, :cond_0

    .line 133
    invoke-static {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKeysFromContext(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    move-result-object v0

    .line 135
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 143
    .end local v0           #keys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .local v1, keys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    :goto_0
    return-object v1

    .line 138
    .end local v1           #keys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .restart local v0       #keys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    :cond_1
    invoke-static {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKeysFromLoginModule(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    move-result-object v0

    move-object v1, v0

    .line 143
    .end local v0           #keys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .restart local v1       #keys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    goto :goto_0
.end method

.method private static getKeysFromContext(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .locals 3
    .parameter "serverPrincipal"

    .prologue
    .line 148
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 150
    .local v0, acc:Ljava/security/AccessControlContext;
    new-instance v2, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$2;

    invoke-direct {v2, p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$2;-><init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)V

    .line 149
    invoke-static {v2, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    .line 159
    .local v1, kerberosKeys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 162
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->checkServerKeyServicePermission(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;)V

    .line 165
    .end local v1           #kerberosKeys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    :goto_0
    return-object v1

    .restart local v1       #kerberosKeys:[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getKeysFromLoginModule(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .locals 5
    .parameter "serverPrincipal"

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :try_start_0
    new-instance v2, Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    const-string v4, "org.apache.harmony.auth.jgss.accept"

    invoke-direct {v2, v4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/security/auth/login/LoginException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .local v2, loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->login()V
    :try_end_1
    .catch Ljavax/security/auth/login/LoginException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v3

    .line 180
    .local v3, subject:Ljavax/security/auth/Subject;
    if-nez p0, :cond_0

    .line 181
    invoke-static {}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getPrincipalFromContext()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p0

    .line 183
    :cond_0
    invoke-static {v3, p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKeysFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    move-result-object v4

    move-object v1, v2

    .end local v2           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .end local v3           #subject:Ljavax/security/auth/Subject;
    .restart local v1       #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :goto_0
    return-object v4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljavax/security/auth/login/LoginException;
    :goto_1
    invoke-virtual {v0}, Ljavax/security/auth/login/LoginException;->printStackTrace()V

    .line 177
    const/4 v4, 0x0

    goto :goto_0

    .line 175
    .end local v0           #e:Ljavax/security/auth/login/LoginException;
    .end local v1           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .restart local v2       #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .restart local v1       #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    goto :goto_1
.end method

.method private static getKeysFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)[Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .locals 5
    .parameter "subject"
    .parameter "serverPrincipal"

    .prologue
    .line 188
    .line 189
    const-class v3, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    invoke-virtual {p0, v3}, Ljavax/security/auth/Subject;->getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 190
    .local v1, kerberosKeys:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v2, serverKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    return-object v3

    .line 191
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    .line 192
    .local v0, kerberosKey:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;->getPrincipal()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getPrincipalFromContext()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 202
    .local v0, acc:Ljava/security/AccessControlContext;
    new-instance v1, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$3;

    invoke-direct {v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils$3;-><init>()V

    .line 201
    invoke-static {v1, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    return-object v1
.end method

.method public static getTGT(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 3
    .parameter "clientPrincipal"

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    if-eqz p0, :cond_0

    .line 222
    invoke-static {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getTGTServerPrincipal(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    .line 221
    invoke-static {p0, v2}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getKerberosTicketFromContext(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    move-result-object v0

    .line 224
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 232
    .end local v0           #tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .local v1, tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    :goto_0
    return-object v1

    .line 227
    .end local v1           #tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .restart local v0       #tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    :cond_1
    invoke-static {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getTGTFromLoginModule(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    move-result-object v0

    move-object v1, v0

    .line 232
    .end local v0           #tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .restart local v1       #tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    goto :goto_0
.end method

.method private static getTGTFromLoginModule(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 5
    .parameter "clientPrincipal"

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :try_start_0
    new-instance v2, Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    const-string v4, "org.apache.harmony.auth.jgss.initiate"

    invoke-direct {v2, v4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/security/auth/login/LoginException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .local v2, loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->login()V
    :try_end_1
    .catch Ljavax/security/auth/login/LoginException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v3

    .line 247
    .local v3, subject:Ljavax/security/auth/Subject;
    if-nez p0, :cond_0

    .line 248
    invoke-static {}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getPrincipalFromContext()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p0

    .line 251
    :cond_0
    invoke-static {p0}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getTGTServerPrincipal(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v4

    .line 250
    invoke-static {v3, p0, v4}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->getTicketFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    move-result-object v4

    move-object v1, v2

    .end local v2           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .end local v3           #subject:Ljavax/security/auth/Subject;
    .restart local v1       #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :goto_0
    return-object v4

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljavax/security/auth/login/LoginException;
    :goto_1
    invoke-virtual {v0}, Ljavax/security/auth/login/LoginException;->printStackTrace()V

    .line 244
    const/4 v4, 0x0

    goto :goto_0

    .line 242
    .end local v0           #e:Ljavax/security/auth/login/LoginException;
    .end local v1           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .restart local v2       #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    .restart local v1       #loginContext:Lorg/apache/harmony/javax/security/auth/login/LoginContext;
    goto :goto_1
.end method

.method private static getTGTServerPrincipal(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;
    .locals 4
    .parameter "clientPrincipal"

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->getRealm()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, realm:Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "krbtgt/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static getTicketFromSubject(Ljavax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 5
    .parameter "subject"
    .parameter "clientPrincipal"
    .parameter "serverPrincipal"

    .prologue
    const/4 v2, 0x0

    .line 263
    if-nez p0, :cond_1

    move-object v1, v2

    .line 282
    :cond_0
    :goto_0
    return-object v1

    .line 267
    :cond_1
    const-class v3, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    invoke-virtual {p0, v3}, Ljavax/security/auth/Subject;->getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 268
    .local v0, kerberosTickets:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v1, v2

    .line 282
    goto :goto_0

    .line 268
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    .line 269
    .local v1, tgt:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->getClient()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->getServer()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    invoke-static {v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosUtils;->isCurrent(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 279
    goto :goto_0
.end method

.method private static isCurrent(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;)Z
    .locals 3
    .parameter "ticket"

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->isCurrent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->refresh()V
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/auth/RefreshFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Lorg/apache/harmony/javax/security/auth/RefreshFailedException;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;->destroy()V
    :try_end_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 292
    :catch_1
    move-exception v1

    .line 293
    .local v1, e1:Ljavax/security/auth/DestroyFailedException;
    invoke-virtual {v1}, Ljavax/security/auth/DestroyFailedException;->printStackTrace()V

    goto :goto_1
.end method
