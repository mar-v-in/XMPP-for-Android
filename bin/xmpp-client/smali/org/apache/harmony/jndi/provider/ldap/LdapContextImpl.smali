.class public Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
.super Ljava/lang/Object;
.source "LdapContextImpl.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/ldap/LdapContext;
.implements Lorg/apache/harmony/javax/naming/event/EventDirContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;
    }
.end annotation


# static fields
.field private static final LDAP_ATTRIBUTES_BINARY:Ljava/lang/String; = "java.naming.ldap.attributes.binary"

.field private static final LDAP_CONTROL_CONNECT:Ljava/lang/String; = "java.naming.ldap.control.connect"

.field private static final LDAP_DELETE_RDN:Ljava/lang/String; = "java.naming.ldap.deleteRDN"

.field private static final LDAP_DEREF_ALIASES:Ljava/lang/String; = "java.naming.ldap.derefAliases"

.field private static final LDAP_TYPES_ONLY:Ljava/lang/String; = "java.naming.ldap.typesOnly"

.field private static final NON_CRITICAL_MANAGE_REF_CONTROL:Lorg/apache/harmony/javax/naming/ldap/Control;

.field private static final connectionProperties:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private batchSize:I

.field private binaryAttributes:[Ljava/lang/String;

.field private client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

.field private connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

.field protected contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

.field protected env:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isClosed:Z

.field private isReBind:Z

.field private isReConnect:Z

.field private ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

.field private listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/harmony/javax/naming/event/NamingListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private parser:Lorg/apache/harmony/javax/naming/NameParser;

.field private requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

.field private responseControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

.field private final schemaTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected subschemasubentry:Ljava/lang/String;

.field private unls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/ManageReferralControl;

    .line 155
    const/4 v1, 0x0

    .line 154
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/ManageReferralControl;-><init>(Z)V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->NON_CRITICAL_MANAGE_REF_CONTROL:Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    .line 177
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    const-string v1, "java.naming.security.authentication"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    const-string v1, "java.naming.security.credentials"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    const-string v1, "java.naming.security.principal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    const-string v1, "java.naming.security.protocol"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    const-string v1, "java.naming.ldap.factory.socket"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter
    .parameter "dn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapClient;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .local p2, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReBind:Z

    .line 144
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReConnect:Z

    .line 152
    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->batchSize:I

    .line 184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->schemaTable:Ljava/util/Hashtable;

    .line 186
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    .line 188
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->initial(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doBindOperation([Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "dn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    iget-object v1, p1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "dn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .local p2, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReBind:Z

    .line 144
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReConnect:Z

    .line 152
    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->batchSize:I

    .line 184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->schemaTable:Ljava/util/Hashtable;

    .line 186
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    .line 188
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->initial(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 220
    iget-object v0, p1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 222
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;[Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2093
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->narrowingControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2116
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->notifyNamingListener(Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V

    return-void
.end method

.method static synthetic access$3(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;Ljava/lang/String;)Lorg/apache/harmony/javax/naming/event/NamingEvent;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;,
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->constructNamingEvent(Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;Ljava/lang/String;)Lorg/apache/harmony/javax/naming/event/NamingEvent;

    move-result-object v0

    return-object v0
.end method

.method private addUnsolicitedListener()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;

    invoke-direct {v1, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->addUnsolicitedListener(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;)V

    .line 447
    return-void
.end method

.method private applyEnvChange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReBind:Z

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->reconnect([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReBind:Z

    .line 457
    :cond_0
    return-void

    .line 453
    :catchall_0
    move-exception v0

    .line 454
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReBind:Z

    .line 455
    throw v0
.end method

.method private changeConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->getPort()I

    move-result v1

    .line 555
    .local v1, port:I
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unuse()V

    .line 556
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    .line 557
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->use()V

    .line 558
    return-void
.end method

.method private checkName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 563
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "jndi.2E"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-nez v0, :cond_1

    .line 567
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v1, "ldap.26"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_1
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 572
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 574
    :cond_2
    return-void
.end method

.method private constructNamingEvent(Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;Ljava/lang/String;)Lorg/apache/harmony/javax/naming/event/NamingEvent;
    .locals 9
    .parameter "result"
    .parameter "control"
    .parameter "baseDN"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;,
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 630
    const/4 v3, 0x0

    .line 631
    .local v3, newBinding:Lorg/apache/harmony/javax/naming/Binding;
    const/4 v4, 0x0

    .line 633
    .local v4, oldBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->getChangeType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 669
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v0, Lorg/apache/harmony/javax/naming/event/NamingEvent;

    .line 670
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->getJNDIChangeType()I

    move-result v2

    .line 671
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->getChangeNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    .line 669
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/event/NamingEvent;-><init>(Lorg/apache/harmony/javax/naming/event/EventContext;ILorg/apache/harmony/javax/naming/Binding;Lorg/apache/harmony/javax/naming/Binding;Ljava/lang/Object;)V

    .line 673
    .local v0, event:Lorg/apache/harmony/javax/naming/event/NamingEvent;
    return-object v0

    .line 636
    .end local v0           #event:Lorg/apache/harmony/javax/naming/event/NamingEvent;
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v1, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->convertToRelativeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, newName:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/javax/naming/Binding;

    .end local v3           #newBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-direct {v3, v7, v2}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 638
    .restart local v3       #newBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/harmony/javax/naming/Binding;->setNameInNamespace(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v7           #newName:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-static {v1, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->convertToRelativeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, deleteName:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/javax/naming/Binding;

    .end local v4           #oldBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-direct {v4, v6, v2}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    .restart local v4       #oldBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/harmony/javax/naming/Binding;->setNameInNamespace(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    .end local v6           #deleteName:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 648
    new-instance v3, Lorg/apache/harmony/javax/naming/Binding;

    .line 649
    .end local v3           #newBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-static {v1, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->convertToRelativeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    .restart local v3       #newBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/harmony/javax/naming/Binding;->setNameInNamespace(Ljava/lang/String;)V

    .line 653
    :cond_1
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->getPreviousDN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 654
    new-instance v4, Lorg/apache/harmony/javax/naming/Binding;

    .line 655
    .end local v4           #oldBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->getPreviousDN()Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v1, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->convertToRelativeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    .restart local v4       #oldBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;->getPreviousDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/harmony/javax/naming/Binding;->setNameInNamespace(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-static {v1, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->convertToRelativeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 662
    .local v8, relativeName:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/javax/naming/Binding;

    .end local v3           #newBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-direct {v3, v8, v2}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    .restart local v3       #newBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/harmony/javax/naming/Binding;->setNameInNamespace(Ljava/lang/String;)V

    .line 665
    new-instance v4, Lorg/apache/harmony/javax/naming/Binding;

    .end local v4           #oldBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-direct {v4, v8, v2}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 666
    .restart local v4       #oldBinding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getDn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/harmony/javax/naming/Binding;->setNameInNamespace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private convertRefToAttribute(Lorg/apache/harmony/javax/naming/Reference;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 11
    .parameter "ref"

    .prologue
    .line 704
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v9, 0x1

    invoke-direct {v2, v9}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 706
    .local v2, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    new-instance v7, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    const-string v9, "objectClass"

    invoke-direct {v7, v9}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 707
    .local v7, objectClass:Lorg/apache/harmony/javax/naming/directory/Attribute;
    const-string v9, "top"

    invoke-interface {v7, v9}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 708
    const-string v9, "javaContainer"

    invoke-interface {v7, v9}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 709
    const-string v9, "javaObject"

    invoke-interface {v7, v9}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 710
    const-string v9, "javaNamingReference"

    invoke-interface {v7, v9}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-interface {v2, v7}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 713
    new-instance v4, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    const-string v9, "javaClassName"

    invoke-direct {v4, v9}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 714
    .local v4, className:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/Reference;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-interface {v2, v4}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 717
    new-instance v1, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    const-string v9, "javaReferenceAddress"

    invoke-direct {v1, v9}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 718
    .local v1, address:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/Reference;->getAll()Ljava/util/Enumeration;

    move-result-object v5

    .line 719
    .local v5, enu:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/javax/naming/RefAddr;>;"
    const/4 v6, 0x0

    .line 720
    .local v6, index:I
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v10, "java.naming.ldap.ref.separator"

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 721
    .local v8, separator:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 723
    const-string v8, "#"

    .line 725
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_1

    .line 734
    invoke-interface {v2, v1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 736
    return-object v2

    .line 726
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/RefAddr;

    .line 727
    .local v0, addr:Lorg/apache/harmony/javax/naming/RefAddr;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .local v3, builder:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/RefAddr;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 732
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private convertSerialToAttribute(Ljava/io/Serializable;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 14
    .parameter "serializable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 741
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 743
    .local v0, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    new-instance v8, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    const-string v11, "objectClass"

    invoke-direct {v8, v11}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 744
    .local v8, objectClass:Lorg/apache/harmony/javax/naming/directory/Attribute;
    const-string v11, "top"

    invoke-interface {v8, v11}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 745
    const-string v11, "javaContainer"

    invoke-interface {v8, v11}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 746
    const-string v11, "javaObject"

    invoke-interface {v8, v11}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 747
    const-string v11, "javaSerializedObject"

    invoke-interface {v8, v11}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-interface {v0, v8}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 750
    new-instance v7, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    const-string v11, "javaClassNames"

    invoke-direct {v7, v11}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 751
    .local v7, javaClassNames:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 752
    const-class v11, Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 755
    .local v4, cs:[Ljava/lang/Class;
    array-length v12, v4

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_1

    .line 760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 761
    .local v10, sup:Ljava/lang/Class;
    :goto_1
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 765
    :cond_0
    invoke-interface {v0, v7}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 767
    const-string v11, "javaClassName"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 769
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 772
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 773
    .local v9, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 774
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 783
    .local v2, bytes:[B
    const-string v11, "javaSerializedData"

    invoke-interface {v0, v11, v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 785
    return-object v0

    .line 755
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bytes:[B
    .end local v9           #out:Ljava/io/ObjectOutputStream;
    .end local v10           #sup:Ljava/lang/Class;
    :cond_1
    aget-object v3, v4, v11

    .line 756
    .local v3, c:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 762
    .end local v3           #c:Ljava/lang/Class;
    .restart local v10       #sup:Ljava/lang/Class;
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_1

    .line 775
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v5

    .line 777
    .local v5, e:Ljava/io/IOException;
    new-instance v6, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-direct {v6}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 778
    .local v6, ex:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v6, v5}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 779
    throw v6
.end method

.method private copyControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 3
    .parameter "controls"

    .prologue
    const/4 v2, 0x0

    .line 789
    if-nez p1, :cond_0

    .line 790
    const/4 v0, 0x0

    .line 795
    :goto_0
    return-object v0

    .line 793
    :cond_0
    array-length v1, p1

    new-array v0, v1, [Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 794
    .local v0, rtValue:[Lorg/apache/harmony/javax/naming/ldap/Control;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private doBindOperation([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 12
    .parameter "connCtsl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->getReferCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 962
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->changeConnection()V

    .line 965
    :cond_0
    new-instance v7, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;

    invoke-direct {v7}, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;-><init>()V

    .line 966
    .local v7, saslBind:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;
    const/4 v6, 0x0

    .line 968
    .local v6, result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-virtual {v7, v8}, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->valueAuthMech(Ljava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    move-result-object v0

    .line 970
    .local v0, authMech:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;
    :try_start_0
    sget-object v8, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->None:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    if-ne v0, v8, :cond_2

    .line 971
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v8, v9, v10, v11}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 972
    .local v1, bind:Lorg/apache/harmony/jndi/provider/ldap/BindOp;
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v8, v1, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 973
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 992
    .end local v1           #bind:Lorg/apache/harmony/jndi/provider/ldap/BindOp;
    :cond_1
    :goto_0
    invoke-static {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 993
    invoke-static {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v8

    throw v8

    .line 974
    :cond_2
    :try_start_1
    sget-object v8, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->Simple:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    if-ne v0, v8, :cond_3

    .line 975
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 976
    const-string v9, "java.naming.security.principal"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 977
    .local v5, principal:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 978
    const-string v9, "java.naming.security.credentials"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 977
    invoke-static {v8}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, credential:Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/BindOp;

    const/4 v8, 0x0

    .line 980
    const/4 v9, 0x0

    .line 979
    invoke-direct {v1, v5, v2, v8, v9}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 981
    .restart local v1       #bind:Lorg/apache/harmony/jndi/provider/ldap/BindOp;
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v8, v1, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 982
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/BindOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v6

    goto :goto_0

    .line 983
    .end local v1           #bind:Lorg/apache/harmony/jndi/provider/ldap/BindOp;
    .end local v2           #credential:Ljava/lang/String;
    .end local v5           #principal:Ljava/lang/String;
    :cond_3
    sget-object v8, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;->SASL:Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind$AuthMech;

    if-ne v0, v8, :cond_1

    .line 984
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v7, v8, v9, p1}, Lorg/apache/harmony/jndi/provider/ldap/sasl/SaslBind;->doSaslBindOperation(Ljava/util/Hashtable;Lorg/apache/harmony/jndi/provider/ldap/LdapClient;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 986
    :catch_0
    move-exception v3

    .line 987
    .local v3, e:Ljava/io/IOException;
    new-instance v4, Lorg/apache/harmony/javax/naming/CommunicationException;

    invoke-direct {v4}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>()V

    .line 988
    .local v4, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v4, v3}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 989
    throw v4

    .line 995
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    :cond_4
    return-void
.end method

.method private doPersistentSearch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)I
    .locals 5
    .parameter "targetDN"
    .parameter "baseDN"
    .parameter "filter"
    .parameter "controls"
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1000
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->applyEnvChange()V

    .line 1002
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    invoke-direct {v3, p1, p4, p3}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1004
    .local v3, op:Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
    move-object v2, p5

    .line 1005
    .local v2, listener:Lorg/apache/harmony/javax/naming/event/NamingListener;
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;

    invoke-direct {v4, p0, p2, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/lang/String;Lorg/apache/harmony/javax/naming/event/NamingListener;)V

    invoke-virtual {v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setSearchResult(Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;)V

    .line 1039
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v4, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->addPersistentSearch(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/apache/harmony/javax/naming/CommunicationException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>()V

    .line 1042
    .local v1, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1043
    throw v1
.end method

.method private getAttributesFromDN(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 1331
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 1332
    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getRdn(I)Lorg/apache/harmony/javax/naming/ldap/Rdn;

    move-result-object v1

    .line 1333
    .local v1, rdn:Lorg/apache/harmony/javax/naming/ldap/Rdn;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v2

    .line 1343
    .end local v1           #rdn:Lorg/apache/harmony/javax/naming/ldap/Rdn;
    :goto_0
    return-object v2

    .line 1336
    :cond_0
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v2, :cond_2

    .line 1337
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1338
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    goto :goto_0

    .line 1341
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v0, lname:Lorg/apache/harmony/javax/naming/ldap/LdapName;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getRdn(I)Lorg/apache/harmony/javax/naming/ldap/Rdn;

    move-result-object v1

    .line 1343
    .restart local v1       #rdn:Lorg/apache/harmony/javax/naming/ldap/Rdn;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v2

    goto :goto_0

    .line 1346
    .end local v0           #lname:Lorg/apache/harmony/javax/naming/ldap/LdapName;
    .end local v1           #rdn:Lorg/apache/harmony/javax/naming/ldap/Rdn;
    :cond_2
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v3, "ldap.26"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 6
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/LimitExceededException;,
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1386
    const/4 v1, 0x0

    .line 1387
    .local v1, limit:I
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v5, "java.naming.ldap.referral.limit"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1389
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v5, "java.naming.ldap.referral.limit"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1388
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1390
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1393
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1394
    new-instance v4, Lorg/apache/harmony/javax/naming/LimitExceededException;

    const-string v5, "ldap.25"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1397
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 1398
    const/4 v1, -0x1

    .line 1403
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 1404
    invoke-virtual {v4}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v2

    .line 1403
    check-cast v2, Ljava/util/Hashtable;

    .line 1405
    .local v2, newEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v4, "java.naming.ldap.referral.limit"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const/4 v3, 0x0

    .line 1410
    :cond_3
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/apache/harmony/javax/naming/ReferralException;->getReferralContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    .local v3, referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    return-object v3

    .line 1399
    .end local v2           #newEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3           #referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :cond_4
    if-eqz v1, :cond_2

    .line 1400
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1412
    .restart local v2       #newEnv:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 1413
    .local v0, ex:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/ReferralException;->skipReferral()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1416
    throw v0
.end method

.method private hasAttribute(Lorg/apache/harmony/javax/naming/directory/Attributes;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "attributes"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1602
    invoke-interface {p1, p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v0

    .line 1603
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-nez v0, :cond_1

    .line 1615
    :cond_0
    :goto_0
    return v3

    .line 1607
    :cond_1
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 1608
    .local v1, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_2
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1609
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1610
    .local v2, o:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1611
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private initial(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 3
    .parameter "ldapClient"
    .parameter
    .parameter "dn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapClient;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 1636
    .local p2, environment:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    .line 1637
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->use()V

    .line 1638
    if-nez p2, :cond_2

    .line 1639
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 1644
    :goto_0
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-direct {v0, p3}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    .line 1645
    new-instance v0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;

    invoke-direct {v0, p3}, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->parser:Lorg/apache/harmony/javax/naming/NameParser;

    .line 1647
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v1, "java.naming.referral"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v1, "java.naming.referral"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/harmony/javax/naming/ldap/Control;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->NON_CRITICAL_MANAGE_REF_CONTROL:Lorg/apache/harmony/javax/naming/ldap/Control;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 1652
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v1, "java.naming.ldap.control.connect"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/harmony/javax/naming/ldap/Control;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 1653
    return-void

    .line 1641
    :cond_2
    invoke-virtual {p2}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z
    .locals 8
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/ReferralException;,
            Lorg/apache/harmony/javax/naming/PartialResultException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1658
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v4, "java.naming.referral"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1659
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1660
    const-string v0, "ignore"

    .line 1663
    :cond_0
    const-string v3, "follow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1666
    :goto_0
    return v1

    .line 1665
    :cond_1
    const-string v3, "throw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1666
    goto :goto_0

    .line 1668
    :cond_2
    const-string v3, "ignore"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1670
    new-instance v1, Lorg/apache/harmony/javax/naming/PartialResultException;

    const-string v2, "ldap.1A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/PartialResultException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1673
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1674
    const-string v4, "ldap.30"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1675
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v7, "java.naming.referral"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "java.naming.referral"

    aput-object v2, v5, v1

    .line 1673
    invoke-static {v4, v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private isInSameNamespace(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1680
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v2, :cond_2

    instance-of v2, p2, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v2, :cond_2

    .line 1682
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1689
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1682
    goto :goto_0

    .line 1685
    :cond_2
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v2, :cond_3

    instance-of v2, p2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 1689
    goto :goto_0
.end method

.method private mergeAttribute(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;
    .locals 3
    .parameter "first"
    .parameter "second"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1921
    if-nez p1, :cond_0

    .line 1940
    .end local p2
    :goto_0
    return-object p2

    .line 1925
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    move-object p2, p1

    .line 1926
    goto :goto_0

    .line 1929
    :cond_1
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 1930
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 1931
    .local v1, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_1
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1935
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 1936
    :goto_2
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p2, v0

    .line 1940
    goto :goto_0

    .line 1932
    :cond_2
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1937
    :cond_3
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private mergeAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 4
    .parameter "first"
    .parameter "second"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1953
    if-nez p1, :cond_0

    .line 1974
    .end local p2
    :goto_0
    return-object p2

    .line 1957
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    move-object p2, p1

    .line 1958
    goto :goto_0

    .line 1961
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 1962
    .local v0, attrs:Lorg/apache/harmony/javax/naming/directory/BasicAttributes;
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v2

    .line 1963
    .local v2, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :goto_1
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1967
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v2

    .line 1968
    :goto_2
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-nez v3, :cond_3

    move-object p2, v0

    .line 1974
    goto :goto_0

    .line 1964
    :cond_2
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-virtual {v0, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_1

    .line 1969
    :cond_3
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 1970
    .local v1, element:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->mergeAttribute(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v1

    .line 1971
    invoke-virtual {v0, v1}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_2
.end method

.method private narrowingControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 4
    .parameter "rawControls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2095
    if-nez p1, :cond_1

    .line 2096
    const/4 v0, 0x0

    .line 2105
    :cond_0
    return-object v0

    .line 2099
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 2100
    .local v0, controls:[Lorg/apache/harmony/javax/naming/ldap/Control;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2101
    aget-object v2, p1, v1

    .line 2102
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 2101
    invoke-static {v2, p0, v3}, Lorg/apache/harmony/javax/naming/ldap/ControlFactory;->getControlInstance(Lorg/apache/harmony/javax/naming/ldap/Control;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private notifyNamingListener(Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V
    .locals 2
    .parameter "listener"
    .parameter "event"

    .prologue
    .line 2122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;

    invoke-direct {v1, p0, p2, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/EventObject;Lorg/apache/harmony/javax/naming/event/NamingListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2142
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2143
    return-void
.end method

.method private processSearchRef(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;Lorg/apache/harmony/javax/naming/ReferralException;)V
    .locals 9
    .parameter "op"
    .parameter "ex"

    .prologue
    const/4 v6, 0x0

    .line 2156
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v2

    .line 2157
    .local v2, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getRefURLs()Ljava/util/List;

    move-result-object v5

    .line 2160
    .local v5, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setRefURLs(Ljava/util/List;)V

    .line 2163
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2192
    :goto_1
    return-void

    .line 2163
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2165
    .local v3, url:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v3, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    move-result-object v4

    .line 2168
    .local v4, urlParser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getBaseObject()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2169
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getBaseObject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setBaseObject(Ljava/lang/String;)V

    .line 2173
    :cond_1
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasFilter()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2174
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getFilter()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setFilter(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 2176
    :cond_2
    invoke-direct {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 2177
    .local v0, ctx:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ldap://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2178
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2177
    invoke-virtual {v2, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setAddress(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    .line 2180
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2182
    .end local v0           #ctx:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlParser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    :catch_0
    move-exception v1

    .line 2189
    .local v1, e:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v2, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public addNamingListener(Ljava/lang/String;ILorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 1
    .parameter "s"
    .parameter "i"
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->addNamingListener(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/event/NamingListener;)V

    .line 375
    return-void
.end method

.method public addNamingListener(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->addNamingListener(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)V

    .line 391
    return-void
.end method

.method public addNamingListener(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 6
    .parameter "name"
    .parameter "filter"
    .parameter "filterArgs"
    .parameter "searchControls"
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->addNamingListener(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)V

    .line 383
    return-void
.end method

.method public addNamingListener(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 12
    .parameter "name"
    .parameter "scope"
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 232
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 234
    if-nez p3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-nez v0, :cond_2

    .line 240
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 241
    invoke-interface {p1, v11}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object p1

    .line 249
    :cond_2
    instance-of v0, p3, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    if-nez v0, :cond_3

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    .line 252
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->addUnsolicitedListener()V

    .line 255
    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    move-object v0, p3

    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    instance-of v0, p3, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;

    if-nez v0, :cond_4

    .line 258
    instance-of v0, p3, Lorg/apache/harmony/javax/naming/event/ObjectChangeListener;

    if-eqz v0, :cond_0

    .line 264
    :cond_4
    if-eqz p2, :cond_6

    .line 265
    if-eq p2, v9, :cond_6

    .line 266
    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "ldap.33"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_5
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v5, "ldap.32"

    .line 245
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 244
    invoke-static {v5, v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, targetDN:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 275
    .local v3, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const-string v0, "objectClass"

    invoke-virtual {v3, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 277
    new-instance v4, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 278
    .local v4, controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    invoke-virtual {v4, p2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 280
    new-instance v8, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 281
    .local v8, tempName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v8, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 282
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, baseDN:Ljava/lang/String;
    move-object v0, p0

    move-object v5, p3

    .line 284
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doPersistentSearch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)I

    move-result v7

    .line 287
    .local v7, messageId:I
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    if-nez v0, :cond_7

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    .line 291
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 292
    .local v6, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v6, :cond_8

    .line 293
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .restart local v6       #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public addNamingListener(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 6
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->addNamingListener(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)V

    .line 369
    return-void
.end method

.method public addNamingListener(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 9
    .parameter "name"
    .parameter "filter"
    .parameter "filterArgs"
    .parameter "searchControls"
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 305
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 307
    if-nez p5, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-nez v0, :cond_2

    .line 312
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 313
    invoke-interface {p1, v4}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object p1

    .line 322
    :cond_2
    instance-of v0, p5, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    if-nez v0, :cond_3

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    .line 325
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->addUnsolicitedListener()V

    .line 328
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    move-object v0, p5

    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    instance-of v0, p5, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;

    if-nez v0, :cond_4

    .line 331
    instance-of v0, p5, Lorg/apache/harmony/javax/naming/event/ObjectChangeListener;

    if-eqz v0, :cond_0

    .line 336
    :cond_4
    if-nez p4, :cond_5

    .line 337
    new-instance p4, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    .end local p4
    invoke-direct {p4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 340
    .restart local p4
    :cond_5
    invoke-static {p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parseFilter(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v3

    .line 342
    .local v3, f:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, targetDN:Ljava/lang/String;
    new-instance v8, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 345
    .local v8, tempName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v8, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 346
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, baseDN:Ljava/lang/String;
    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    .line 348
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doPersistentSearch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)I

    move-result v7

    .line 351
    .local v7, messageId:I
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    .line 355
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 356
    .local v6, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v6, :cond_7

    .line 357
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .restart local v6       #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v1           #targetDN:Ljava/lang/String;
    .end local v2           #baseDN:Ljava/lang/String;
    .end local v3           #f:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v6           #idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7           #messageId:I
    .end local v8           #tempName:Lorg/apache/harmony/javax/naming/Name;
    :cond_8
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Target cannot span multiple namespaces: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-direct {v0, v4}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "s"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 395
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 396
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 399
    :cond_1
    const-string v2, "java.naming.batchsize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p2

    .line 400
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->batchSize:I

    .line 406
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, preValue:Ljava/lang/Object;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 410
    :cond_3
    if-nez v0, :cond_6

    if-nez p2, :cond_6

    .line 422
    :cond_4
    :goto_1
    return-object v0

    .line 401
    .end local v0           #preValue:Ljava/lang/Object;
    :cond_5
    const-string v2, "java.naming.ldap.attributes.binary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 402
    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->binaryAttributes:[Ljava/lang/String;

    goto :goto_0

    .line 414
    .end local v1           #value:Ljava/lang/String;
    .restart local v0       #preValue:Ljava/lang/Object;
    :cond_6
    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    const-string v2, "java.naming.security.protocol"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 416
    const-string v2, "java.naming.ldap.factory.socket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 417
    :cond_7
    iput-boolean v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReConnect:Z

    .line 419
    :cond_8
    iput-boolean v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReBind:Z

    goto :goto_1
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "s"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 548
    return-void
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .parameter "n"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 462
    return-void
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 12
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 469
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 475
    .local v4, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v7

    .line 476
    .local v7, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v4, v7, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 537
    .end local v4           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v7           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-void

    .line 483
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 485
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "ldap.2E"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 488
    :cond_1
    if-nez p2, :cond_2

    .line 489
    invoke-virtual {p0, p1, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    goto :goto_0

    .line 494
    :cond_2
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 493
    invoke-static {p2, p1, p0, v10, p3}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getStateToBind(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;

    move-result-object v8

    .line 495
    .local v8, result:Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;
    invoke-virtual {v8}, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;->getObject()Ljava/lang/Object;

    move-result-object v5

    .line 497
    .local v5, o:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 499
    .local v0, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    instance-of v10, v5, Lorg/apache/harmony/javax/naming/Reference;

    if-eqz v10, :cond_4

    .line 500
    check-cast v5, Lorg/apache/harmony/javax/naming/Reference;

    .end local v5           #o:Ljava/lang/Object;
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertRefToAttribute(Lorg/apache/harmony/javax/naming/Reference;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    .line 512
    :goto_1
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v3

    .line 513
    .local v3, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    invoke-virtual {v8}, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 514
    invoke-virtual {v8}, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v9

    .line 516
    .local v9, resultAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    :cond_3
    :goto_2
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v10

    if-nez v10, :cond_8

    .line 533
    invoke-virtual {p0, p1, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    goto :goto_0

    .line 501
    .end local v3           #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    .end local v9           #resultAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .restart local v5       #o:Ljava/lang/Object;
    :cond_4
    instance-of v10, v5, Lorg/apache/harmony/javax/naming/Referenceable;

    if-eqz v10, :cond_5

    .line 502
    check-cast v5, Lorg/apache/harmony/javax/naming/Referenceable;

    .end local v5           #o:Ljava/lang/Object;
    invoke-interface {v5}, Lorg/apache/harmony/javax/naming/Referenceable;->getReference()Lorg/apache/harmony/javax/naming/Reference;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertRefToAttribute(Lorg/apache/harmony/javax/naming/Reference;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    goto :goto_1

    .line 503
    .restart local v5       #o:Ljava/lang/Object;
    :cond_5
    instance-of v10, v5, Ljava/io/Serializable;

    if-eqz v10, :cond_6

    .line 504
    check-cast v5, Ljava/io/Serializable;

    .end local v5           #o:Ljava/lang/Object;
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertSerialToAttribute(Ljava/io/Serializable;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    goto :goto_1

    .line 505
    .restart local v5       #o:Ljava/lang/Object;
    :cond_6
    instance-of v10, v5, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v10, :cond_7

    move-object v1, v5

    .line 506
    check-cast v1, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 507
    .local v1, cxt:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const-string v10, ""

    invoke-interface {v1, v10}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    goto :goto_1

    .line 509
    .end local v1           #cxt:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :cond_7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "ldap.24"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 517
    .end local v5           #o:Ljava/lang/Object;
    .restart local v3       #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    .restart local v9       #resultAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    :cond_8
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 518
    .local v2, element:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v10

    const-string v11, "objectClass"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 520
    const-string v10, "objectClass"

    invoke-interface {v9, v10}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v10

    .line 519
    invoke-direct {p0, v10, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->mergeAttribute(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v2

    .line 521
    const-string v10, "objectClass"

    invoke-interface {v9, v10}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v6

    .line 522
    .local v6, oc:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v6, :cond_9

    .line 523
    const-string v10, "javaContainer"

    invoke-interface {v6, v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-interface {v6}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 524
    const-string v10, "javaContainer"

    invoke-interface {v2, v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->remove(Ljava/lang/Object;)Z

    .line 527
    :cond_9
    invoke-interface {v9, v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_2

    .line 528
    .end local v6           #oc:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :cond_a
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v10

    if-nez v10, :cond_3

    .line 529
    invoke-interface {v9, v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto/16 :goto_2

    .line 535
    .end local v2           #element:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v9           #resultAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    :cond_b
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    goto/16 :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 578
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isClosed:Z

    if-nez v0, :cond_0

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isClosed:Z

    .line 580
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unuse()V

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    .line 583
    :cond_0
    return-void
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "pfx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 624
    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    .line 623
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    return-object v0
.end method

.method public composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "name"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 593
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 595
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "jndi.2E"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_1
    const/4 v0, 0x0

    .line 599
    .local v0, result:Lorg/apache/harmony/javax/naming/Name;
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v1, :cond_2

    instance-of v1, p2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v1, :cond_2

    .line 600
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lorg/apache/harmony/javax/naming/Name;
    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    .line 601
    .restart local v0       #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 618
    :goto_0
    return-object v0

    .line 602
    :cond_2
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v1, :cond_3

    instance-of v1, p2, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v1, :cond_3

    .line 603
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v0           #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 604
    .restart local v0       #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v0, p2}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 605
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0

    .line 606
    :cond_3
    instance-of v1, p2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v1, :cond_4

    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v1, :cond_4

    .line 607
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v0           #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 608
    .restart local v0       #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 609
    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0

    .line 610
    :cond_4
    instance-of v1, p2, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v1, :cond_5

    .line 611
    instance-of v1, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v1, :cond_5

    .line 612
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v0           #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 613
    .restart local v0       #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v0, p2}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 614
    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0

    .line 616
    :cond_5
    new-instance v1, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v2, "ldap.26"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 691
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "jndi.2E"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, name:Lorg/apache/harmony/javax/naming/CompositeName;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/CompositeName;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 697
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    .end local v0           #name:Lorg/apache/harmony/javax/naming/CompositeName;
    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 700
    :cond_1
    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 17
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 808
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 813
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v8

    check-cast v8, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 814
    .local v8, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v11

    .line 815
    .local v11, remainingName:Lorg/apache/harmony/javax/naming/Name;
    move-object/from16 v0, p2

    invoke-interface {v8, v11, v0}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v14

    .line 860
    .end local v8           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v11           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-object v14

    .line 822
    :cond_0
    if-nez p2, :cond_1

    .line 823
    new-instance p2, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    .end local p2
    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-direct {v0, v14}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 824
    .restart local p2
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    const-string v14, "objectClass"

    move-object/from16 v0, p0

    invoke-direct {v3, v14, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 825
    .local v3, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    const-string v14, "top"

    invoke-interface {v3, v14}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 826
    const-string v14, "javaContainer"

    invoke-interface {v3, v14}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 827
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 831
    .end local v3           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v13

    .line 834
    .local v13, targetDN:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getAttributesFromDN(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v14

    .line 833
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->mergeAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v4

    .line 837
    .local v4, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    new-instance v7, Ljava/util/ArrayList;

    .line 838
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v14

    .line 837
    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    .local v7, la:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;>;"
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v6

    .line 840
    .local v6, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v14

    if-nez v14, :cond_3

    .line 848
    new-instance v9, Lorg/apache/harmony/jndi/provider/ldap/AddOp;

    invoke-direct {v9, v13, v7}, Lorg/apache/harmony/jndi/provider/ldap/AddOp;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 850
    .local v9, op:Lorg/apache/harmony/jndi/provider/ldap/AddOp;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/ReferralException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    invoke-virtual {v9}, Lorg/apache/harmony/jndi/provider/ldap/AddOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v12

    .line 860
    .local v12, result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    new-instance v14, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getMachedDN()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    .end local v9           #op:Lorg/apache/harmony/jndi/provider/ldap/AddOp;
    .end local v12           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :cond_3
    invoke-interface {v6}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 842
    .local v2, att:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 843
    new-instance v14, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    move-object/from16 v0, p0

    invoke-direct {v14, v2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 851
    .end local v2           #att:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .restart local v9       #op:Lorg/apache/harmony/jndi/provider/ldap/AddOp;
    :catch_0
    move-exception v5

    .line 852
    .local v5, e:Lorg/apache/harmony/javax/naming/ReferralException;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 853
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v10

    .line 854
    .local v10, referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v14

    goto/16 :goto_0

    .line 856
    .end local v10           #referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :cond_4
    throw v5
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 912
    return-void
.end method

.method public destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 878
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 883
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    .line 884
    .local v1, nns:Lorg/apache/harmony/javax/naming/Context;
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v4

    .line 885
    .local v4, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v1, v4}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 907
    .end local v1           #nns:Lorg/apache/harmony/javax/naming/Context;
    .end local v4           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v5

    .line 894
    .local v5, targetDN:Ljava/lang/String;
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;

    invoke-direct {v2, v5}, Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;-><init>(Ljava/lang/String;)V

    .line 896
    .local v2, op:Lorg/apache/harmony/jndi/provider/ldap/DeleteOp;
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/ReferralException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Lorg/apache/harmony/javax/naming/ReferralException;
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 899
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v3

    .line 900
    .local v3, referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    invoke-interface {v3, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    goto :goto_0

    .line 903
    .end local v3           #referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :cond_1
    throw v0

    .line 904
    .end local v0           #e:Lorg/apache/harmony/javax/naming/ReferralException;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method protected doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V
    .locals 9
    .parameter "op"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->applyEnvChange()V

    .line 926
    const/4 v2, 0x0

    .line 928
    .local v2, message:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-virtual {v5, p1, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 937
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getControls()[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v3

    .line 938
    .local v3, rawControls:[Lorg/apache/harmony/javax/naming/ldap/Control;
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->narrowingControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->responseControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 940
    invoke-interface {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v4

    .line 941
    .local v4, result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 942
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;

    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {v6}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v6

    .line 943
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getReferrals()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 942
    invoke-direct {v5, v6, v7, v8}, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Hashtable;)V

    throw v5

    .line 929
    .end local v3           #rawControls:[Lorg/apache/harmony/javax/naming/ldap/Control;
    .end local v4           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :catch_0
    move-exception v0

    .line 930
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/apache/harmony/javax/naming/CommunicationException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>()V

    .line 931
    .local v1, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 933
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->responseControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 934
    throw v1

    .line 946
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    .restart local v3       #rawControls:[Lorg/apache/harmony/javax/naming/ldap/Control;
    .restart local v4       #result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :cond_0
    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 947
    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v5

    throw v5

    .line 949
    :cond_1
    return-void
.end method

.method doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    .locals 2
    .parameter "dn"
    .parameter "filter"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1159
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1160
    .local v0, op:Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v1

    return-object v1
.end method

.method doSearch(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    .locals 14
    .parameter "op"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->applyEnvChange()V

    .line 1050
    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->batchSize:I

    invoke-virtual {p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setBatchSize(I)V

    .line 1051
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v9, "java.naming.ldap.derefAliases"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1052
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v9, "java.naming.ldap.derefAliases"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1053
    .local v1, derefAliases:Ljava/lang/String;
    const-string v8, "always"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1054
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setDerefAliases(I)V

    .line 1069
    .end local v1           #derefAliases:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v9, "java.naming.ldap.typesOnly"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1070
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v9, "java.naming.ldap.typesOnly"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1071
    .local v7, typesOnly:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1072
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setTypesOnly(Z)V

    .line 1082
    .end local v7           #typesOnly:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->binaryAttributes:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setBinaryAttributes([Ljava/lang/String;)V

    .line 1084
    const/4 v4, 0x0

    .line 1086
    .local v4, message:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_start_0
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-virtual {v8, p1, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1102
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getControls()[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v5

    .line 1103
    .local v5, rawControls:[Lorg/apache/harmony/javax/naming/ldap/Control;
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->narrowingControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->responseControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 1105
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v6

    .line 1107
    .local v6, result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    if-eqz v6, :cond_c

    .line 1108
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    .line 1109
    invoke-static {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v9

    .line 1108
    invoke-virtual {v8, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 1112
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_a

    .line 1113
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1114
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    .line 1154
    .end local v5           #rawControls:[Lorg/apache/harmony/javax/naming/ldap/Control;
    .end local v6           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :goto_2
    return-object v8

    .line 1055
    .end local v4           #message:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    .restart local v1       #derefAliases:Ljava/lang/String;
    :cond_2
    const-string v8, "never"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1056
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setDerefAliases(I)V

    goto :goto_0

    .line 1057
    :cond_3
    const-string v8, "finding"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1058
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setDerefAliases(I)V

    goto :goto_0

    .line 1059
    :cond_4
    const-string v8, "searching"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1060
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setDerefAliases(I)V

    goto/16 :goto_0

    .line 1062
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 1063
    const-string v9, "ldap.30"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v13, "java.naming.ldap.derefAliases"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 1064
    const-string v12, "java.naming.ldap.derefAliases"

    aput-object v12, v10, v11

    .line 1062
    invoke-static {v9, v10}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1073
    .end local v1           #derefAliases:Ljava/lang/String;
    .restart local v7       #typesOnly:Ljava/lang/String;
    :cond_6
    const-string v8, "false"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1074
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setTypesOnly(Z)V

    goto/16 :goto_1

    .line 1076
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 1077
    const-string v9, "ldap.30"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v13, "java.naming.ldap.typesOnly"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 1078
    const-string v12, "java.naming.ldap.typesOnly"

    aput-object v12, v10, v11

    .line 1076
    invoke-static {v9, v10}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1087
    .end local v7           #typesOnly:Ljava/lang/String;
    .restart local v4       #message:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :catch_0
    move-exception v2

    .line 1088
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Lorg/apache/harmony/javax/naming/CommunicationException;

    .line 1089
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 1088
    invoke-direct {v3, v8}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v3, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v3, v2}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1091
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1092
    :cond_8
    throw v3

    .line 1094
    :cond_9
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 1097
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    goto/16 :goto_2

    .line 1118
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    .restart local v5       #rawControls:[Lorg/apache/harmony/javax/naming/ldap/Control;
    .restart local v6       #result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :cond_a
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_c

    .line 1119
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;

    .line 1120
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {v8}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getReferrals()[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 1119
    invoke-direct {v3, v8, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 1122
    .local v3, ex:Lorg/apache/harmony/javax/naming/ReferralException;
    :try_start_1
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1123
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 1124
    .local v0, ctx:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    goto/16 :goto_2

    .line 1126
    .end local v0           #ctx:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :cond_b
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 1127
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/PartialResultException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto/16 :goto_2

    .line 1129
    :catch_1
    move-exception v2

    .line 1130
    .local v2, e:Lorg/apache/harmony/javax/naming/PartialResultException;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 1131
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    goto/16 :goto_2

    .line 1136
    .end local v2           #e:Lorg/apache/harmony/javax/naming/PartialResultException;
    .end local v3           #ex:Lorg/apache/harmony/javax/naming/ReferralException;
    :cond_c
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getRefURLs()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1137
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getRefURLs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_d

    .line 1138
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;

    .line 1139
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {v8}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getRefURLs()Ljava/util/List;

    move-result-object v8

    .line 1140
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 1138
    invoke-direct {v3, v9, v8, v10}, Lorg/apache/harmony/jndi/provider/ldap/ReferralExceptionImpl;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 1142
    .restart local v3       #ex:Lorg/apache/harmony/javax/naming/ReferralException;
    :try_start_2
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1143
    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->processSearchRef(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;Lorg/apache/harmony/javax/naming/ReferralException;)V
    :try_end_2
    .catch Lorg/apache/harmony/javax/naming/PartialResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1154
    .end local v3           #ex:Lorg/apache/harmony/javax/naming/ReferralException;
    :cond_d
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    goto/16 :goto_2

    .line 1145
    .restart local v3       #ex:Lorg/apache/harmony/javax/naming/ReferralException;
    :cond_e
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 1146
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :try_end_3
    .catch Lorg/apache/harmony/javax/naming/PartialResultException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    goto/16 :goto_2

    .line 1148
    :catch_2
    move-exception v2

    .line 1149
    .restart local v2       #e:Lorg/apache/harmony/javax/naming/PartialResultException;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    .line 1150
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    goto/16 :goto_2
.end method

.method public extendedOperation(Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    .locals 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;

    invoke-direct {v1, p1}, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;-><init>(Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;)V

    .line 1168
    .local v1, op:Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/ReferralException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/ExtendedOp;->getExtendedResponse()Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;

    move-result-object v3

    .line 1178
    .local v3, response:Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    instance-of v4, v3, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 1179
    check-cast v4, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->getSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->setSocket(Ljava/net/Socket;)V

    .line 1181
    .end local v3           #response:Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    :cond_0
    :goto_0
    return-object v3

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, e:Lorg/apache/harmony/javax/naming/ReferralException;
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1171
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/LdapContext;

    .line 1172
    .local v2, referralContext:Lorg/apache/harmony/javax/naming/ldap/LdapContext;
    invoke-interface {v2, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapContext;->extendedOperation(Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;

    move-result-object v3

    goto :goto_0

    .line 1174
    .end local v2           #referralContext:Lorg/apache/harmony/javax/naming/ldap/LdapContext;
    :cond_1
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 1187
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->close()V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 12
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1194
    const/4 v3, 0x0

    .line 1195
    .local v3, cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v9, "java.naming.spi.CannotProceedException"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1196
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v9, "java.naming.spi.CannotProceedException"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    check-cast v3, Lorg/apache/harmony/javax/naming/CannotProceedException;

    .line 1201
    .restart local v3       #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    :goto_0
    invoke-interface {p1, v10}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v4

    .line 1204
    .local v4, dn:Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 1205
    .local v1, altName:Lorg/apache/harmony/javax/naming/Name;
    const-string v8, ""

    invoke-interface {v1, v8}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 1208
    invoke-virtual {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    .line 1210
    invoke-virtual {v3}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getResolvedName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v7

    .line 1211
    .local v7, resolvedName:Lorg/apache/harmony/javax/naming/Name;
    if-nez v7, :cond_0

    .line 1212
    new-instance v7, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v7           #resolvedName:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v7}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 1216
    .restart local v7       #resolvedName:Lorg/apache/harmony/javax/naming/Name;
    :cond_0
    invoke-interface {v7, v4}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 1218
    invoke-interface {p1, v11}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v6

    .line 1219
    .local v6, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v6}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v8

    if-ne v8, v11, :cond_1

    invoke-interface {v6, v10}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1220
    new-instance v6, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v6           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v6}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 1221
    .restart local v6       #remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v7}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1222
    const-string v8, ""

    invoke-interface {v7, v8}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 1226
    :cond_1
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 1227
    new-instance v9, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-direct {v9, v4}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1226
    invoke-direct {v2, p0, v8, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 1229
    .local v2, context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    invoke-virtual {v3, v1}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setAltName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1230
    invoke-virtual {v3, v2}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setAltNameCtx(Lorg/apache/harmony/javax/naming/Context;)V

    .line 1231
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Hashtable;

    invoke-virtual {v3, v8}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setEnvironment(Ljava/util/Hashtable;)V

    .line 1232
    invoke-virtual {v3, v6}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setRemainingName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1233
    invoke-virtual {v3, v7}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setResolvedName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1235
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$3;

    const-string v8, "nns"

    invoke-direct {v0, p0, v8, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$3;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 1247
    .local v0, addr:Lorg/apache/harmony/javax/naming/RefAddr;
    new-instance v5, Lorg/apache/harmony/javax/naming/Reference;

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v0}, Lorg/apache/harmony/javax/naming/Reference;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/RefAddr;)V

    .line 1249
    .local v5, ref:Lorg/apache/harmony/javax/naming/Reference;
    invoke-virtual {v3, v5}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setResolvedObj(Ljava/lang/Object;)V

    .line 1251
    invoke-static {v3}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getContinuationDirContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v8

    return-object v8

    .line 1198
    .end local v0           #addr:Lorg/apache/harmony/javax/naming/RefAddr;
    .end local v1           #altName:Lorg/apache/harmony/javax/naming/Name;
    .end local v2           #context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    .end local v4           #dn:Ljava/lang/String;
    .end local v5           #ref:Lorg/apache/harmony/javax/naming/Reference;
    .end local v6           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    .end local v7           #resolvedName:Lorg/apache/harmony/javax/naming/Name;
    :cond_2
    new-instance v3, Lorg/apache/harmony/javax/naming/CannotProceedException;

    .end local v3           #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-direct {v3}, Lorg/apache/harmony/javax/naming/CannotProceedException;-><init>()V

    .restart local v3       #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    goto/16 :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1320
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "s"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1326
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 13
    .parameter "name"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1262
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1264
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1269
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 1270
    .local v6, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    invoke-interface {p1, v11}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v7

    .line 1271
    .local v7, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v6, v7, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v1

    .line 1315
    .end local v6           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v7           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :cond_0
    :goto_0
    return-object v1

    .line 1278
    :cond_1
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v9

    .line 1281
    .local v9, targetDN:Ljava/lang/String;
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 1282
    .local v2, controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    invoke-virtual {v2, v12}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 1288
    if-eqz p2, :cond_2

    array-length v10, p2

    if-nez v10, :cond_2

    .line 1290
    new-array p2, v11, [Ljava/lang/String;

    .end local p2
    const-string v10, "1.1"

    aput-object v10, p2, v12

    .line 1292
    .restart local p2
    :cond_2
    invoke-virtual {v2, p2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 1294
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    const/4 v10, 0x7

    invoke-direct {v3, v10}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1295
    .local v3, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const-string v10, "objectClass"

    invoke-virtual {v3, v10}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 1297
    invoke-virtual {p0, v9, v3, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v8

    .line 1298
    .local v8, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getEntries()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1299
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/Attributes;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1300
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 1301
    .local v1, attributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getIDs()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v4

    .line 1302
    .local v4, ids:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1304
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v10}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v0

    .line 1303
    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    .line 1305
    .local v0, attribute:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;
    invoke-virtual {v0, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->setContext(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    goto :goto_1

    .line 1310
    .end local v0           #attribute:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;
    .end local v1           #attributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v4           #ids:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1311
    invoke-virtual {v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v10

    throw v10

    .line 1315
    :cond_4
    new-instance v1, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    invoke-direct {v1, v11}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    goto :goto_0
.end method

.method public getConnectControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1351
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->copyControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1361
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1381
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1366
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1371
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 1372
    .local v0, nns:Lorg/apache/harmony/javax/naming/Context;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    .line 1373
    .local v1, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v2

    .line 1376
    .end local v0           #nns:Lorg/apache/harmony/javax/naming/Context;
    .end local v1           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->parser:Lorg/apache/harmony/javax/naming/NameParser;

    goto :goto_0
.end method

.method public getRequestControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1425
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->copyControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    return-object v0
.end method

.method public getResponseControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1430
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->responseControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->copyControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1563
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 27
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1435
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    if-eqz v2, :cond_0

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    .line 1558
    :goto_0
    return-object v2

    .line 1440
    :cond_0
    new-instance v24, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct/range {v24 .. v24}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 1441
    .local v24, searchControls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    const/16 v23, 0x0

    .line 1442
    .local v23, search:Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
    const/4 v13, 0x0

    .line 1443
    .local v13, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v14, 0x0

    .line 1444
    .local v14, filterParser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    const/16 v25, 0x0

    .line 1445
    .local v25, sre:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    const/16 v20, 0x0

    .line 1446
    .local v20, names:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;>;"
    const/16 v19, 0x0

    .line 1448
    .local v19, keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1449
    new-instance v14, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;

    .end local v14           #filterParser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    const-string v2, "(objectClass=*)"

    invoke-direct {v14, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/lang/String;)V

    .line 1451
    .restart local v14       #filterParser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    :try_start_0
    invoke-virtual {v14}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;
    :try_end_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1459
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 1460
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1461
    const-string v4, "namingContexts"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "subschemaSubentry"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "altServer"

    aput-object v4, v2, v3

    .line 1460
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 1462
    new-instance v23, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    .end local v23           #search:Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1, v13}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1463
    .restart local v23       #search:Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setBatchSize(I)V

    .line 1465
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1476
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v25

    .line 1477
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getEntries()Ljava/util/Map;

    move-result-object v20

    .line 1479
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    .line 1481
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1494
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 1495
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v2

    goto/16 :goto_0

    .line 1452
    :catch_0
    move-exception v11

    .line 1453
    .local v11, e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    new-instance v12, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;

    .line 1454
    const-string v2, "ldap.29"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1453
    invoke-direct {v12, v2}, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v12, ex:Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;
    invoke-virtual {v12, v11}, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1456
    throw v12

    .line 1466
    .end local v11           #e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    .end local v12           #ex:Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;
    :catch_1
    move-exception v11

    .line 1467
    .local v11, e:Ljava/io/IOException;
    new-instance v12, Lorg/apache/harmony/javax/naming/CommunicationException;

    .line 1468
    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1467
    invoke-direct {v12, v2}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v12, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v12, v11}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1470
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1471
    throw v12

    .line 1473
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 1481
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1482
    .local v18, key:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 1483
    .local v8, as:Lorg/apache/harmony/javax/naming/directory/Attributes;
    invoke-interface {v8}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getIDs()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v17

    .line 1484
    .local v17, ids:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v17 .. v17}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1485
    invoke-interface/range {v17 .. v17}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1486
    .local v16, id:Ljava/lang/String;
    const-string v3, "subschemasubentry"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1487
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    goto/16 :goto_2

    .line 1498
    .end local v8           #as:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v16           #id:Ljava/lang/String;
    .end local v17           #ids:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<Ljava/lang/String;>;"
    .end local v18           #key:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 1499
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "objectclasses"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1500
    const-string v4, "attributetypes"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "matchingrules"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ldapsyntaxes"

    aput-object v4, v2, v3

    .line 1499
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 1501
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningObjFlag(Z)V

    .line 1502
    new-instance v14, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;

    .end local v14           #filterParser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    const-string v2, "(objectClass=subschema)"

    invoke-direct {v14, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/lang/String;)V

    .line 1504
    .restart local v14       #filterParser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    :try_start_2
    invoke-virtual {v14}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;
    :try_end_2
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 1511
    new-instance v23, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    .end local v23           #search:Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1, v13}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1512
    .restart local v23       #search:Lorg/apache/harmony/jndi/provider/ldap/SearchOp;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->setBatchSize(I)V

    .line 1514
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1524
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_8

    .line 1525
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v3, "ldap.34"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1505
    :catch_2
    move-exception v11

    .line 1506
    .local v11, e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    new-instance v12, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;

    .line 1507
    const-string v2, "ldap.29"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-direct {v12, v2}, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v12, ex:Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;
    invoke-virtual {v12, v11}, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1509
    throw v12

    .line 1515
    .end local v11           #e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    .end local v12           #ex:Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;
    :catch_3
    move-exception v11

    .line 1516
    .local v11, e:Ljava/io/IOException;
    new-instance v12, Lorg/apache/harmony/javax/naming/CommunicationException;

    .line 1517
    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1516
    invoke-direct {v12, v2}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>(Ljava/lang/String;)V

    .line 1518
    .local v12, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v12, v11}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1519
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1520
    throw v12

    .line 1522
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->setException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1527
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    :cond_8
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v25

    .line 1528
    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getEntries()Ljava/util/Map;

    move-result-object v20

    .line 1530
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    .line 1531
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1556
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->schemaTable:Ljava/util/Hashtable;

    .line 1557
    const/4 v7, 0x3

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Name;Ljava/util/Hashtable;I)V

    .line 1556
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    goto/16 :goto_0

    .line 1531
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1532
    .restart local v18       #key:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 1533
    .restart local v8       #as:Lorg/apache/harmony/javax/naming/directory/Attributes;
    invoke-interface {v8}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getIDs()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v17

    .line 1535
    .restart local v17       #ids:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<Ljava/lang/String;>;"
    :cond_b
    invoke-interface/range {v17 .. v17}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1536
    invoke-interface/range {v17 .. v17}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1537
    .local v22, schemaType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->schemaTable:Ljava/util/Hashtable;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->schemaTable:Ljava/util/Hashtable;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1539
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 1538
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->schemaTable:Ljava/util/Hashtable;

    .line 1543
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Hashtable;

    .line 1545
    .local v21, schemaDef:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-interface {v8, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v10

    .line 1544
    check-cast v10, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    .line 1548
    .local v10, attribute:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->size()I

    move-result v3

    if-ge v15, v3, :cond_b

    .line 1549
    invoke-virtual {v10, v15}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1550
    .local v26, value:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lorg/apache/harmony/jndi/provider/ldap/parser/SchemaParser;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1551
    .local v9, attrName:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    add-int/lit8 v15, v15, 0x1

    goto :goto_4
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1581
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1569
    .line 1570
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "objectClass"

    aput-object v4, v2, v3

    .line 1569
    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v1

    .line 1571
    .local v1, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    const-string v2, "objectClass"

    invoke-interface {v1, v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v0

    .line 1573
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    if-nez v2, :cond_0

    .line 1574
    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 1576
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->ldapSchemaCtx:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    invoke-virtual {v2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getClassDefinition(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v2

    return-object v2
.end method

.method protected getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;
    .locals 4
    .parameter "name"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;,
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 1586
    const/4 v1, 0x0

    .line 1587
    .local v1, target:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1588
    move-object v1, p2

    .line 1597
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1589
    :cond_0
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v2, :cond_1

    .line 1590
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    goto :goto_0

    .line 1591
    :cond_1
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v2, :cond_2

    .line 1592
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 1593
    .local v0, alt:Lorg/apache/harmony/javax/naming/ldap/LdapName;
    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    goto :goto_0

    .line 1595
    .end local v0           #alt:Lorg/apache/harmony/javax/naming/ldap/LdapName;
    :cond_2
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v3, "ldap.26"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1619
    instance-of v2, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v2, :cond_2

    .line 1621
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, ""

    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1630
    :cond_0
    :goto_0
    return v0

    .line 1625
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    :cond_2
    move v0, v1

    .line 1630
    goto :goto_0
.end method

.method public list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1695
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1697
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1702
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v2

    .line 1703
    .local v2, nns:Lorg/apache/harmony/javax/naming/Context;
    invoke-interface {p1, v7}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    .line 1704
    .local v3, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/naming/Context;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v6

    .line 1725
    .end local v2           #nns:Lorg/apache/harmony/javax/naming/Context;
    .end local v3           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-object v6

    .line 1711
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v5

    .line 1714
    .local v5, targetDN:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 1715
    .local v0, controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    invoke-virtual {v0, v7}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 1716
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    const/4 v6, 0x7

    invoke-direct {v1, v6}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1717
    .local v1, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const-string v6, "objectClass"

    invoke-virtual {v1, v6}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 1719
    invoke-virtual {p0, v5, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v4

    .line 1721
    .local v4, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1722
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v6

    throw v6

    .line 1725
    :cond_1
    invoke-virtual {v4, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->toNameClassPairEnumeration(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v6

    goto :goto_0
.end method

.method public listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1775
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1737
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1739
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1744
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 1745
    .local v2, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    invoke-interface {p1, v7}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    .line 1746
    .local v3, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v6

    .line 1769
    .end local v2           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v3           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-object v6

    .line 1755
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v5

    .line 1758
    .local v5, targetDN:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 1759
    .local v0, controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    invoke-virtual {v0, v7}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 1760
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    const/4 v6, 0x7

    invoke-direct {v1, v6}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1761
    .local v1, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const-string v6, "objectClass"

    invoke-virtual {v1, v6}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 1763
    invoke-virtual {p0, v5, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v4

    .line 1765
    .local v4, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1766
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v6

    throw v6

    .line 1769
    :cond_1
    invoke-virtual {v4, p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->toBindingEnumeration(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v6

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1898
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 31
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1780
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1782
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1787
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v19

    check-cast v19, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 1788
    .local v19, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v23

    .line 1789
    .local v23, remainingName:Lorg/apache/harmony/javax/naming/Name;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v7

    .line 1885
    .end local v19           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v23           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :cond_0
    :goto_0
    return-object v7

    .line 1795
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v6

    .line 1796
    .local v6, attributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    const-string v29, "objectClass"

    const-string v30, "javaContainer"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasAttribute(Lorg/apache/harmony/javax/naming/directory/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2

    .line 1797
    const-string v29, "objectClass"

    const-string v30, "javaObject"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasAttribute(Lorg/apache/harmony/javax/naming/directory/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v26

    .line 1802
    .local v26, targetDN:Ljava/lang/String;
    new-instance v7, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-direct {v7, v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Ljava/lang/String;)V

    goto :goto_0

    .line 1805
    .end local v26           #targetDN:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 1807
    .local v7, boundObject:Ljava/lang/Object;
    const-string v29, "objectClass"

    const-string v30, "javaSerializedObject"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasAttribute(Lorg/apache/harmony/javax/naming/directory/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1808
    const-string v29, "javaSerializedData"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v29

    .line 1809
    invoke-interface/range {v29 .. v29}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v10

    .line 1808
    check-cast v10, [B

    .line 1810
    .local v10, data:[B
    const/4 v15, 0x0

    .line 1812
    .local v15, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v16, Ljava/io/ObjectInputStream;

    new-instance v29, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1813
    .end local v15           #in:Ljava/io/ObjectInputStream;
    .local v16, in:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v7

    .line 1821
    if-eqz v16, :cond_3

    .line 1823
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1880
    .end local v7           #boundObject:Ljava/lang/Object;
    .end local v10           #data:[B
    .end local v16           #in:Ljava/io/ObjectInputStream;
    :cond_3
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    .line 1879
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-static {v7, v0, v1, v2}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;

    move-result-object v7

    .line 1881
    .restart local v7       #boundObject:Ljava/lang/Object;
    if-nez v7, :cond_0

    .line 1882
    new-instance v7, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .end local v7           #boundObject:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    move-object/from16 v30, v0

    .line 1882
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v7, v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .local v7, boundObject:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    goto/16 :goto_0

    .line 1814
    .local v7, boundObject:Ljava/lang/Object;
    .restart local v10       #data:[B
    .restart local v15       #in:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v11

    .line 1815
    .local v11, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    new-instance v13, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-direct {v13}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 1816
    .local v13, ex:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v13, v11}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1817
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1820
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #ex:Lorg/apache/harmony/javax/naming/NamingException;
    :catchall_0
    move-exception v29

    .line 1821
    :goto_3
    if-eqz v15, :cond_4

    .line 1823
    :try_start_5
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1828
    :cond_4
    :goto_4
    throw v29

    .line 1818
    :catch_1
    move-exception v29

    .line 1821
    :goto_5
    if-eqz v15, :cond_3

    .line 1823
    :try_start_6
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1824
    :catch_2
    move-exception v29

    goto :goto_1

    .line 1829
    .end local v10           #data:[B
    .end local v15           #in:Ljava/io/ObjectInputStream;
    :cond_5
    const-string v29, "objectClass"

    .line 1830
    const-string v30, "javaNamingReference"

    .line 1829
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasAttribute(Lorg/apache/harmony/javax/naming/directory/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1831
    const-string v29, "javaClassName"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v29

    .line 1832
    invoke-interface/range {v29 .. v29}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v8

    .line 1831
    check-cast v8, Ljava/lang/String;

    .line 1834
    .local v8, className:Ljava/lang/String;
    const-string v29, "javaFactory"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v27

    .line 1835
    .local v27, temp:Lorg/apache/harmony/javax/naming/directory/Attribute;
    const/4 v14, 0x0

    .line 1836
    .local v14, factory:Ljava/lang/String;
    if-eqz v27, :cond_6

    .line 1837
    invoke-interface/range {v27 .. v27}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #factory:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1840
    .restart local v14       #factory:Ljava/lang/String;
    :cond_6
    const-string v29, "javaCodebase"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v27

    .line 1841
    const/16 v18, 0x0

    .line 1842
    .local v18, location:Ljava/lang/String;
    if-eqz v27, :cond_7

    .line 1843
    invoke-interface/range {v27 .. v27}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v18

    .end local v18           #location:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 1846
    .restart local v18       #location:Ljava/lang/String;
    :cond_7
    new-instance v20, Lorg/apache/harmony/javax/naming/Reference;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v14, v1}, Lorg/apache/harmony/javax/naming/Reference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    .local v20, ref:Lorg/apache/harmony/javax/naming/Reference;
    const-string v29, "javaReferenceAddress"

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v22

    .line 1848
    .local v22, refAddress:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v22, :cond_9

    .line 1849
    invoke-interface/range {v22 .. v22}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v12

    .line 1850
    .local v12, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    .line 1851
    const-string v30, "java.naming.ldap.ref.separator"

    invoke-virtual/range {v29 .. v30}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1852
    .local v24, separator:Ljava/lang/String;
    if-nez v24, :cond_8

    .line 1853
    const-string v24, "#"

    .line 1855
    :cond_8
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1858
    .local v5, addrsMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/apache/harmony/javax/naming/StringRefAddr;>;"
    :goto_6
    invoke-interface {v12}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v29

    if-nez v29, :cond_a

    .line 1871
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_7
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-nez v30, :cond_b

    .line 1875
    .end local v5           #addrsMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/apache/harmony/javax/naming/StringRefAddr;>;"
    .end local v12           #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    .end local v24           #separator:Ljava/lang/String;
    :cond_9
    move-object/from16 v7, v20

    .local v7, boundObject:Lorg/apache/harmony/javax/naming/Reference;
    goto/16 :goto_1

    .line 1859
    .restart local v5       #addrsMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/apache/harmony/javax/naming/StringRefAddr;>;"
    .local v7, boundObject:Ljava/lang/Object;
    .restart local v12       #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    .restart local v24       #separator:Ljava/lang/String;
    :cond_a
    invoke-interface {v12}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1860
    .local v4, address:Ljava/lang/String;
    new-instance v25, Ljava/util/StringTokenizer;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    .local v25, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1863
    .local v17, index:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v28

    .line 1864
    .local v28, type:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1865
    .local v9, content:Ljava/lang/String;
    new-instance v21, Lorg/apache/harmony/javax/naming/StringRefAddr;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v9}, Lorg/apache/harmony/javax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    .local v21, refAddr:Lorg/apache/harmony/javax/naming/StringRefAddr;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1871
    .end local v4           #address:Ljava/lang/String;
    .end local v9           #content:Ljava/lang/String;
    .end local v17           #index:I
    .end local v21           #refAddr:Lorg/apache/harmony/javax/naming/StringRefAddr;
    .end local v25           #st:Ljava/util/StringTokenizer;
    .end local v28           #type:Ljava/lang/String;
    :cond_b
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/StringRefAddr;

    .line 1872
    .local v3, addr:Lorg/apache/harmony/javax/naming/StringRefAddr;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/apache/harmony/javax/naming/Reference;->add(Lorg/apache/harmony/javax/naming/RefAddr;)V

    goto :goto_7

    .line 1887
    .end local v3           #addr:Lorg/apache/harmony/javax/naming/StringRefAddr;
    .end local v5           #addrsMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/apache/harmony/javax/naming/StringRefAddr;>;"
    .end local v7           #boundObject:Ljava/lang/Object;
    .end local v8           #className:Ljava/lang/String;
    .end local v12           #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    .end local v14           #factory:Ljava/lang/String;
    .end local v18           #location:Ljava/lang/String;
    .end local v20           #ref:Lorg/apache/harmony/javax/naming/Reference;
    .end local v22           #refAddress:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v24           #separator:Ljava/lang/String;
    .end local v27           #temp:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :catch_3
    move-exception v11

    .line 1888
    .local v11, e:Lorg/apache/harmony/javax/naming/NamingException;
    throw v11

    .line 1889
    .end local v11           #e:Lorg/apache/harmony/javax/naming/NamingException;
    :catch_4
    move-exception v11

    .line 1891
    .local v11, e:Ljava/lang/Exception;
    new-instance v29, Lorg/apache/harmony/javax/naming/NamingException;

    .line 1892
    const-string v30, "jndi.83"

    invoke-static/range {v30 .. v30}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1891
    invoke-direct/range {v29 .. v30}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 1892
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Lorg/apache/harmony/javax/naming/NamingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v29

    .line 1891
    check-cast v29, Lorg/apache/harmony/javax/naming/NamingException;

    throw v29

    .line 1824
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #boundObject:Ljava/lang/Object;
    .restart local v10       #data:[B
    .restart local v15       #in:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v30

    goto/16 :goto_4

    .end local v15           #in:Ljava/io/ObjectInputStream;
    .restart local v16       #in:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v29

    goto/16 :goto_1

    .line 1820
    :catchall_1
    move-exception v29

    move-object/from16 v15, v16

    .end local v16           #in:Ljava/io/ObjectInputStream;
    .restart local v15       #in:Ljava/io/ObjectInputStream;
    goto/16 :goto_3

    .line 1818
    .end local v15           #in:Ljava/io/ObjectInputStream;
    .restart local v16       #in:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v29

    move-object/from16 v15, v16

    .end local v16           #in:Ljava/io/ObjectInputStream;
    .restart local v15       #in:Ljava/io/ObjectInputStream;
    goto/16 :goto_5

    .line 1814
    .end local v15           #in:Ljava/io/ObjectInputStream;
    .restart local v16       #in:Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v11

    move-object/from16 v15, v16

    .end local v16           #in:Ljava/io/ObjectInputStream;
    .restart local v15       #in:Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1908
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1903
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2073
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 2074
    return-void
.end method

.method public modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 1
    .parameter "s"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2079
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 2080
    return-void
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 6
    .parameter "name"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1980
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 1981
    if-nez p3, :cond_0

    .line 1983
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "jndi.13"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1986
    :cond_0
    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    const/4 v4, 0x3

    if-eq p2, v4, :cond_1

    .line 1987
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    .line 1993
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "jndi.14"

    invoke-static {v5, p2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1996
    :cond_1
    invoke-interface {p3}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    .line 1997
    .local v0, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    invoke-interface {p3}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v4

    new-array v3, v4, [Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    .line 1998
    .local v3, items:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    const/4 v1, 0x0

    .line 1999
    .local v1, index:I
    :goto_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2003
    invoke-virtual {p0, p1, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 2004
    return-void

    .line 2000
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    new-instance v5, Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-direct {v5, p2, v4}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;-><init>(ILorg/apache/harmony/javax/naming/directory/Attribute;)V

    aput-object v5, v3, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 12
    .parameter "name"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2009
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2011
    if-nez p2, :cond_0

    .line 2014
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ldap.27"

    invoke-static {v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2017
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2022
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 2023
    .local v2, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v5

    .line 2024
    .local v5, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v2, v5, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 2068
    .end local v2           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v5           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :cond_1
    :goto_0
    return-void

    .line 2028
    :cond_2
    array-length v7, p2

    if-eqz v7, :cond_1

    .line 2036
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v6

    .line 2037
    .local v6, targetDN:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;

    invoke-direct {v3, v6}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;-><init>(Ljava/lang/String;)V

    .line 2038
    .local v3, op:Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
    array-length v8, p2

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v8, :cond_3

    .line 2059
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/ReferralException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    .local v0, e:Lorg/apache/harmony/javax/naming/ReferralException;
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2062
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v4

    .line 2063
    .local v4, referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    invoke-interface {v4, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    goto :goto_0

    .line 2038
    .end local v0           #e:Lorg/apache/harmony/javax/naming/ReferralException;
    .end local v4           #referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :cond_3
    aget-object v1, p2, v7

    .line 2039
    .local v1, item:Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 2053
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 2054
    const-string v8, "jndi.14"

    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v9

    .line 2053
    invoke-static {v8, v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2041
    :pswitch_0
    const/4 v9, 0x0

    new-instance v10, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->getAttribute()Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v11

    .line 2042
    invoke-direct {v10, v11, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 2041
    invoke-virtual {v3, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    .line 2038
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2045
    :pswitch_1
    const/4 v9, 0x1

    new-instance v10, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->getAttribute()Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v11

    .line 2046
    invoke-direct {v10, v11, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 2045
    invoke-virtual {v3, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    goto :goto_2

    .line 2049
    :pswitch_2
    const/4 v9, 0x2

    new-instance v10, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->getAttribute()Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v11

    .line 2050
    invoke-direct {v10, v11, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 2049
    invoke-virtual {v3, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    goto :goto_2

    .line 2066
    .end local v1           #item:Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    .restart local v0       #e:Lorg/apache/harmony/javax/naming/ReferralException;
    :cond_4
    throw v0

    .line 2039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public newInstance([Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/ldap/LdapContext;
    .locals 3
    .parameter "reqCtrls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2110
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    .line 2111
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2110
    invoke-direct {v0, p0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 2112
    .local v0, instance:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->setRequestControls([Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 2113
    return-object v0
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "s"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2225
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 2226
    return-void
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2231
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 2232
    return-void
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .parameter "n"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 2197
    return-void
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 4
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2202
    const/4 v0, 0x0

    .line 2204
    .local v0, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2211
    if-nez p3, :cond_0

    instance-of v2, p2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 2212
    check-cast v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    const-string v3, ""

    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object p3

    .line 2213
    if-nez p3, :cond_0

    .line 2214
    move-object p3, v0

    .line 2218
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2220
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 2221
    :goto_0
    return-void

    .line 2205
    :catch_0
    move-exception v1

    .line 2207
    .local v1, e:Lorg/apache/harmony/javax/naming/NameNotFoundException;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    goto :goto_0
.end method

.method public reconnect([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 2
    .parameter "ac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2236
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->copyControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 2237
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReConnect:Z

    if-eqz v0, :cond_0

    .line 2239
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->changeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReConnect:Z

    .line 2245
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connCtls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doBindOperation([Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 2246
    return-void

    .line 2240
    :catchall_0
    move-exception v0

    .line 2241
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReConnect:Z

    .line 2242
    throw v0
.end method

.method public removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2250
    if-nez p1, :cond_0

    .line 2251
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2254
    :cond_0
    const-string v1, "java.naming.batchsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2255
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->batchSize:I

    .line 2260
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2263
    .local v0, preValue:Ljava/lang/Object;
    if-nez v0, :cond_4

    .line 2275
    :cond_2
    :goto_1
    return-object v0

    .line 2256
    .end local v0           #preValue:Ljava/lang/Object;
    :cond_3
    const-string v1, "java.naming.ldap.attributes.binary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2257
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->binaryAttributes:[Ljava/lang/String;

    goto :goto_0

    .line 2267
    .restart local v0       #preValue:Ljava/lang/Object;
    :cond_4
    sget-object v1, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->connectionProperties:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2268
    const-string v1, "java.naming.security.protocol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2269
    const-string v1, "java.naming.ldap.factory.socket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2270
    :cond_5
    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReConnect:Z

    .line 2272
    :cond_6
    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isReBind:Z

    goto :goto_1
.end method

.method public removeNamingListener(Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 8
    .parameter "namingListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2281
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2302
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    instance-of v4, p1, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;

    if-eqz v4, :cond_2

    .line 2286
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2289
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->listeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2290
    .local v3, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 2295
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2296
    .local v2, id:Ljava/lang/Integer;
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->client:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    invoke-virtual {v5, v6, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->removePersistentSearch(I[Lorg/apache/harmony/javax/naming/ldap/Control;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2298
    .end local v2           #id:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 2299
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/apache/harmony/javax/naming/CommunicationException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>()V

    .line 2300
    .local v1, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sOld"
    .parameter "sNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2348
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V

    .line 2349
    return-void
.end method

.method public rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    .locals 12
    .parameter "nOld"
    .parameter "nNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 2306
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2307
    invoke-direct {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2309
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isInSameNamespace(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2310
    new-instance v10, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v11, "ldap.2A"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2313
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2314
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    .line 2315
    .local v0, context:Lorg/apache/harmony/javax/naming/Context;
    invoke-interface {p1, v11}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v10

    invoke-interface {p2, v11}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Lorg/apache/harmony/javax/naming/Context;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V

    .line 2344
    .end local v0           #context:Lorg/apache/harmony/javax/naming/Context;
    :goto_0
    return-void

    .line 2320
    :cond_1
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v5

    .line 2321
    .local v5, oldTargetDN:Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p2, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v4

    .line 2322
    .local v4, newTargetDN:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 2323
    .local v3, name:Lorg/apache/harmony/javax/naming/ldap/LdapName;
    invoke-virtual {v3}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getRdn(I)Lorg/apache/harmony/javax/naming/ldap/Rdn;

    move-result-object v7

    .line 2324
    .local v7, rdn:Lorg/apache/harmony/javax/naming/ldap/Rdn;
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v11, "java.naming.ldap.deleteRDN"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2326
    .local v9, value:Ljava/lang/String;
    const/4 v2, 0x1

    .line 2327
    .local v2, isDeleteRdn:Z
    if-eqz v9, :cond_2

    .line 2328
    invoke-static {v9}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2331
    :cond_2
    new-instance v6, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;

    invoke-virtual {v7}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2332
    invoke-virtual {v3}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2331
    invoke-direct {v6, v5, v10, v2, v11}, Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2335
    .local v6, op:Lorg/apache/harmony/jndi/provider/ldap/ModifyDNOp;
    :try_start_0
    invoke-virtual {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/ReferralException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2336
    :catch_0
    move-exception v1

    .line 2337
    .local v1, e:Lorg/apache/harmony/javax/naming/ReferralException;
    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->isFollowReferral(Lorg/apache/harmony/javax/naming/ReferralException;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2338
    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getReferralContext(Lorg/apache/harmony/javax/naming/ReferralException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v8

    .line 2339
    .local v8, referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    invoke-interface {v8, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V

    goto :goto_0

    .line 2342
    .end local v8           #referralContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :cond_3
    throw v1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2487
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2480
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2467
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2473
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2461
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 6
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2425
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2427
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2432
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 2433
    .local v1, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    .line 2434
    .local v2, remainingName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v1, v2, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v5

    .line 2455
    .end local v1           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v2           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-object v5

    .line 2441
    :cond_0
    if-nez p4, :cond_1

    .line 2442
    new-instance p4, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    .end local p4
    invoke-direct {p4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 2446
    .restart local p4
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p0, p1, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v4

    .line 2448
    .local v4, targetDN:Ljava/lang/String;
    invoke-static {p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->parseFilter(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v0

    .line 2450
    .local v0, f:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {p0, v4, v0, p4}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v3

    .line 2452
    .local v3, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2453
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v5

    throw v5

    .line 2455
    :cond_2
    invoke-virtual {v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->toSearchResultEnumeration(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v5

    goto :goto_0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 18
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2360
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->checkName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2362
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->hasMultiNamingSpace(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2367
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->findNnsContext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v9

    check-cast v9, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 2368
    .local v9, nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v10

    .line 2369
    .local v10, remainingName:Lorg/apache/harmony/javax/naming/Name;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v9, v10, v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v15

    .line 2418
    .end local v9           #nns:Lorg/apache/harmony/javax/naming/directory/DirContext;
    .end local v10           #remainingName:Lorg/apache/harmony/javax/naming/Name;
    :goto_0
    return-object v15

    .line 2376
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->contextDn:Lorg/apache/harmony/javax/naming/ldap/LdapName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getTargetDN(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/String;

    move-result-object v12

    .line 2377
    .local v12, targetDN:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2380
    .local v8, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v15

    if-nez v15, :cond_3

    .line 2381
    :cond_1
    new-instance v8, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v8           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v15, 0x7

    invoke-direct {v8, v15}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 2382
    .restart local v8       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const-string v15, "objectClass"

    invoke-virtual {v8, v15}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 2411
    :cond_2
    :goto_1
    new-instance v6, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v6}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    .line 2412
    .local v6, controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 2413
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doSearch(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v11

    .line 2415
    .local v11, result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    invoke-virtual {v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 2416
    invoke-virtual {v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->getException()Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v15

    throw v15

    .line 2385
    .end local v6           #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    .end local v11           #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2386
    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-interface {v15}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 2387
    new-instance v8, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v8           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v15, 0x3

    invoke-direct {v8, v15}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 2388
    .restart local v8       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 2389
    .local v2, att:Lorg/apache/harmony/javax/naming/directory/Attribute;
    new-instance v15, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v16

    .line 2390
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2389
    invoke-virtual {v8, v15}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 2393
    .end local v2           #att:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v4

    .line 2394
    .local v4, attrs:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    new-instance v8, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v8           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v15, 0x0

    invoke-direct {v8, v15}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 2395
    .restart local v8       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    :cond_5
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2396
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 2397
    .local v3, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v13

    .line 2398
    .local v13, type:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v7

    .line 2399
    .local v7, enuValues:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_2
    invoke-interface {v7}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2400
    invoke-interface {v7}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v14

    .line 2401
    .local v14, value:Ljava/lang/Object;
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .line 2402
    const/4 v15, 0x3

    .line 2401
    invoke-direct {v5, v15}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 2403
    .local v5, child:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    new-instance v15, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 2404
    invoke-direct {v15, v13, v14}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2403
    invoke-virtual {v5, v15}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 2405
    invoke-virtual {v8, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    goto :goto_2

    .line 2418
    .end local v3           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v4           #attrs:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    .end local v5           #child:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v7           #enuValues:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    .end local v13           #type:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/Object;
    .restart local v6       #controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;
    .restart local v11       #result:Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
    :cond_6
    invoke-virtual {v11, v12}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->toSearchResultEnumeration(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v15

    goto/16 :goto_0
.end method

.method public setRequestControls([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 4
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2492
    const/4 v0, 0x0

    .line 2494
    .local v0, hasManageDsaITConntrol:Z
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v2, "java.naming.referral"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2495
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->env:Ljava/util/Hashtable;

    const-string v2, "java.naming.referral"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ignore"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2496
    :cond_0
    const/4 v0, 0x1

    .line 2499
    :cond_1
    if-nez p1, :cond_3

    .line 2500
    if-eqz v0, :cond_2

    .line 2501
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/harmony/javax/naming/ldap/Control;

    sget-object v2, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->NON_CRITICAL_MANAGE_REF_CONTROL:Lorg/apache/harmony/javax/naming/ldap/Control;

    aput-object v2, v1, v3

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 2516
    :goto_0
    return-void

    .line 2503
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    goto :goto_0

    .line 2508
    :cond_3
    if-eqz v0, :cond_4

    .line 2509
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/harmony/javax/naming/ldap/Control;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 2510
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2511
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    array-length v2, p1

    sget-object v3, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->NON_CRITICAL_MANAGE_REF_CONTROL:Lorg/apache/harmony/javax/naming/ldap/Control;

    aput-object v3, v1, v2

    goto :goto_0

    .line 2513
    :cond_4
    array-length v1, p1

    new-array v1, v1, [Lorg/apache/harmony/javax/naming/ldap/Control;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    .line 2514
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->requestControls:[Lorg/apache/harmony/javax/naming/ldap/Control;

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public targetMustExist()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2520
    const/4 v0, 0x1

    return v0
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2531
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unbind(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2532
    return-void
.end method

.method public unbind(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 0
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2526
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2527
    return-void
.end method
