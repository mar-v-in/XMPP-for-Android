.class public Lorg/apache/harmony/jndi/provider/dns/DNSContext;
.super Ljava/lang/Object;
.source "DNSContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/directory/DirContext;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    }
.end annotation


# static fields
.field private static final BINDING_SWT:I = 0x2

.field public static final LOOKUP_ATTR:Ljava/lang/String; = "org.apache.harmony.jndi.provider.dns.lookup.attr"

.field private static final NAME_CLASS_SWT:I = 0x1

.field public static final RECURSION:Ljava/lang/String; = "org.apache.harmony.jndi.provider.dns.recursion"

.field public static final THREADS_MAX:Ljava/lang/String; = "org.apache.harmony.jndi.provider.dns.threads.max"

.field public static final TIMEOUT_INITIAL:Ljava/lang/String; = "org.apache.harmony.jndi.provider.dns.timeout.initial"

.field public static final TIMEOUT_RETRIES:Ljava/lang/String; = "org.apache.harmony.jndi.provider.dns.timeout.retries"


# instance fields
.field private authoritative:Z

.field private contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

.field private environment:Ljava/util/Hashtable;
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

.field private lookupAttrClass:I

.field private lookupAttrType:I

.field private maxThreads:I

.field private nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

.field private recursion:Z

.field private resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

.field private timeoutInitial:I

.field private timeoutRetries:I


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .local p1, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->authoritative:Z

    .line 145
    const/16 v0, 0x10

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrType:I

    .line 147
    iput v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    .line 149
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->recursion:Z

    .line 151
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutInitial:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutRetries:I

    .line 157
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->maxThreads:I

    .line 194
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    .line 195
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "jndi.45"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    .line 200
    const-string v0, "java.naming.authoritative"

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseBoolProp(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseLookupProp()V

    .line 202
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v1, "org.apache.harmony.jndi.provider.dns.recursion"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "org.apache.harmony.jndi.provider.dns.recursion"

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseBoolProp(Ljava/lang/String;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v1, "org.apache.harmony.jndi.provider.dns.timeout.initial"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const-string v0, "org.apache.harmony.jndi.provider.dns.timeout.initial"

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseIntProp(Ljava/lang/String;)V

    .line 208
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v1, "org.apache.harmony.jndi.provider.dns.timeout.retries"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    const-string v0, "org.apache.harmony.jndi.provider.dns.timeout.retries"

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseIntProp(Ljava/lang/String;)V

    .line 211
    :cond_3
    const-string v0, "org.apache.harmony.jndi.provider.dns.threads.max"

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseIntProp(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/Resolver;

    iget v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutInitial:I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutRetries:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->maxThreads:I

    .line 213
    iget-boolean v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->authoritative:Z

    iget-boolean v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->recursion:Z

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/dns/Resolver;-><init>(IIIZZ)V

    .line 212
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    .line 214
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseProviderUrlProp()V

    .line 215
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V
    .locals 2
    .parameter "ancestorCtx"
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->authoritative:Z

    .line 145
    const/16 v0, 0x10

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrType:I

    .line 147
    iput v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    .line 149
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->recursion:Z

    .line 151
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutInitial:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutRetries:I

    .line 157
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->maxThreads:I

    .line 171
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->initialize(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V

    .line 172
    return-void
.end method

.method private concatenateDNSNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "comp1"
    .parameter "comp2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 558
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 559
    .local v0, comp1IsRoot:Z
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 560
    .local v1, comp2IsRoot:Z
    const/4 v2, 0x0

    .line 562
    .local v2, composition:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 563
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    invoke-virtual {v3, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 564
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    new-instance v3, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v4, "jndi.52"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 568
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 569
    const-string v2, "."

    .line 578
    :goto_0
    return-object v2

    .line 570
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 572
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 574
    new-instance v3, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v4, "jndi.53"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private constructCannotProceedException(Lorg/apache/harmony/jndi/provider/dns/DNSName;Lorg/apache/harmony/javax/naming/CompositeName;)Lorg/apache/harmony/javax/naming/CannotProceedException;
    .locals 8
    .parameter "name"
    .parameter "remainingName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 596
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-virtual {p0, p1, v6}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 597
    .local v1, nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    new-instance v4, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    invoke-direct {v4, p0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V

    .line 599
    .local v4, resolvedCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    new-instance v3, Lorg/apache/harmony/jndi/provider/dns/DNSContext$1;

    const-string v6, "nns"

    invoke-direct {v3, p0, v6, v4}, Lorg/apache/harmony/jndi/provider/dns/DNSContext$1;-><init>(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/DNSContext;)V

    .line 609
    .local v3, refAddr:Lorg/apache/harmony/javax/naming/RefAddr;
    new-instance v2, Lorg/apache/harmony/javax/naming/Reference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/javax/naming/Reference;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/RefAddr;)V

    .line 610
    .local v2, ref:Lorg/apache/harmony/javax/naming/Reference;
    const/4 v0, 0x0

    .line 611
    .local v0, cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    const/4 v5, 0x0

    .line 613
    .local v5, resolvedName:Lorg/apache/harmony/javax/naming/CompositeName;
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v7, "java.naming.spi.CannotProceedException"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 614
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v7, "java.naming.spi.CannotProceedException"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    check-cast v0, Lorg/apache/harmony/javax/naming/CannotProceedException;

    .line 615
    .restart local v0       #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/CannotProceedException;->getResolvedName()Lorg/apache/harmony/javax/naming/Name;

    move-result-object v5

    .end local v5           #resolvedName:Lorg/apache/harmony/javax/naming/CompositeName;
    check-cast v5, Lorg/apache/harmony/javax/naming/CompositeName;

    .line 618
    .restart local v5       #resolvedName:Lorg/apache/harmony/javax/naming/CompositeName;
    if-eqz v5, :cond_0

    .line 619
    invoke-virtual {v5}, Lorg/apache/harmony/javax/naming/CompositeName;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/harmony/javax/naming/CompositeName;->get(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 621
    invoke-virtual {v5}, Lorg/apache/harmony/javax/naming/CompositeName;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/harmony/javax/naming/CompositeName;->remove(I)Ljava/lang/Object;

    .line 626
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setEnvironment(Ljava/util/Hashtable;)V

    .line 627
    invoke-virtual {v0, p1}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setAltName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 628
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    invoke-virtual {v0, v6}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setAltNameCtx(Lorg/apache/harmony/javax/naming/Context;)V

    .line 629
    invoke-virtual {v0, p2}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setRemainingName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 630
    if-nez v5, :cond_1

    .line 631
    new-instance v5, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v5           #resolvedName:Lorg/apache/harmony/javax/naming/CompositeName;
    invoke-direct {v5}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 633
    .restart local v5       #resolvedName:Lorg/apache/harmony/javax/naming/CompositeName;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/javax/naming/CompositeName;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 635
    const-string v6, ""

    invoke-virtual {v5, v6}, Lorg/apache/harmony/javax/naming/CompositeName;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 636
    invoke-virtual {v0, v5}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setResolvedName(Lorg/apache/harmony/javax/naming/Name;)V

    .line 637
    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/naming/CannotProceedException;->setResolvedObj(Ljava/lang/Object;)V

    .line 638
    return-object v0

    .line 624
    :cond_2
    new-instance v0, Lorg/apache/harmony/javax/naming/CannotProceedException;

    .end local v0           #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/CannotProceedException;-><init>()V

    .restart local v0       #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    goto :goto_0
.end method

.method private convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "nameStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, nameObj:Lorg/apache/harmony/javax/naming/Name;
    if-nez p1, :cond_0

    .line 657
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "jndi.2E"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v0           #nameObj:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    .line 660
    .restart local v0       #nameObj:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 661
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 665
    :cond_1
    :goto_0
    return-object v0

    .line 662
    :cond_2
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 663
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .end local v0           #nameObj:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    .restart local v0       #nameObj:Lorg/apache/harmony/javax/naming/Name;
    goto :goto_0
.end method

.method private static createAttributesFromRecords(Ljava/util/Enumeration;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;)",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;"
        }
    .end annotation

    .prologue
    .local p0, recs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    const/4 v8, 0x1

    .line 107
    new-instance v1, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    invoke-direct {v1, v8}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 109
    .local v1, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    return-object v1

    .line 110
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 111
    .local v3, curRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    const/4 v2, 0x0

    .line 112
    .local v2, clssTypeStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 114
    .local v4, oldAttr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 115
    sget-object v5, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v6

    aget-object v2, v5, v6

    .line 121
    :goto_1
    invoke-interface {v1, v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v4

    .line 122
    if-eqz v4, :cond_2

    .line 123
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    .line 118
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 119
    sget-object v6, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 125
    :cond_2
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    .line 126
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    .line 125
    invoke-direct {v0, v2, v5, v6}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 128
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    invoke-interface {v1, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_0
.end method

.method private getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    .locals 5
    .parameter "cmpName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1193
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v3, :cond_0

    .line 1194
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1195
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1197
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, remainingName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/CompositeName;

    .line 1199
    .local v0, nameToLookFor:Lorg/apache/harmony/javax/naming/CompositeName;
    const-string v3, ""

    invoke-virtual {v0, v3}, Lorg/apache/harmony/javax/naming/CompositeName;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 1200
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v1

    .line 1201
    .local v1, obj:Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;

    invoke-direct {v3, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method private initialize(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V
    .locals 1
    .parameter "ancestorCtx"
    .parameter "name"

    .prologue
    .line 1224
    invoke-virtual {p2}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1225
    iget-object v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    .line 1226
    iget-object v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    .line 1227
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 1226
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    .line 1228
    iget-object v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    .line 1229
    iget-boolean v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->authoritative:Z

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->authoritative:Z

    .line 1230
    iget v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrType:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrType:I

    .line 1231
    iget v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    .line 1232
    iget-boolean v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->recursion:Z

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->recursion:Z

    .line 1233
    iget v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutInitial:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutInitial:I

    .line 1234
    iget v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutRetries:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutRetries:I

    .line 1235
    iget v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->maxThreads:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->maxThreads:I

    .line 1236
    return-void
.end method

.method private list_common(Lorg/apache/harmony/javax/naming/Name;I)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 25
    .parameter "name"
    .parameter "contentSwt"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "I)",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1304
    const/4 v14, 0x0

    .line 1305
    .local v14, nameToList:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    const/4 v3, 0x0

    .line 1306
    .local v3, altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    const/16 v17, 0x0

    .line 1307
    .local v17, remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    const/16 v19, 0x0

    .line 1309
    .local v19, result:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<TT;>;"
    const/16 v23, 0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    const/16 v23, 0x2

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1311
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "jndi.50"

    invoke-static/range {v24 .. v24}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1313
    :cond_0
    if-nez p1, :cond_1

    .line 1315
    new-instance v23, Ljava/lang/NullPointerException;

    const-string v24, "jndi.2E"

    invoke-static/range {v24 .. v24}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1318
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v23

    if-nez v23, :cond_3

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->clone()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #nameToList:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v14, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1345
    .restart local v14       #nameToList:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :cond_2
    :goto_0
    if-eqz v17, :cond_6

    .line 1346
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->constructCannotProceedException(Lorg/apache/harmony/jndi/provider/dns/DNSName;Lorg/apache/harmony/javax/naming/CompositeName;)Lorg/apache/harmony/javax/naming/CannotProceedException;

    move-result-object v4

    .line 1349
    .local v4, cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-static {v4}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getContinuationContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v15

    .line 1351
    .local v15, nnsContext:Lorg/apache/harmony/javax/naming/Context;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/harmony/javax/naming/Context;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v19

    .line 1419
    .end local v4           #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    .end local v15           #nnsContext:Lorg/apache/harmony/javax/naming/Context;
    :goto_1
    return-object v19

    .line 1321
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/harmony/javax/naming/CompositeName;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1324
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v22

    .line 1326
    .local v22, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    .end local v3           #altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1328
    .restart local v3       #altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v14

    .end local v14           #nameToList:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v14, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1332
    .restart local v14       #nameToList:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 1333
    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v17

    .end local v17           #remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    check-cast v17, Lorg/apache/harmony/javax/naming/CompositeName;

    .restart local v17       #remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    goto :goto_0

    .line 1335
    .end local v22           #tmp:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v14

    .end local v14           #nameToList:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v14, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .restart local v14       #nameToList:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    goto :goto_0

    .line 1342
    :cond_5
    new-instance v23, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v24, "jndi.4B"

    invoke-static/range {v24 .. v24}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1355
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    move-object/from16 v23, v0

    .line 1356
    invoke-virtual {v14}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->list(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v18

    .line 1357
    .local v18, resEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    .line 1358
    .local v13, entries:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;TT;>;"
    new-instance v21, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V

    .line 1361
    .local v21, targetCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    :cond_7
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-nez v23, :cond_8

    .line 1406
    new-instance v19, Lorg/apache/harmony/jndi/provider/dns/BasicNamingEnumerator;

    .end local v19           #result:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<TT;>;"
    invoke-virtual {v13}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/BasicNamingEnumerator;-><init>(Ljava/util/Enumeration;)V

    .restart local v19       #result:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<TT;>;"
    goto/16 :goto_1

    .line 1362
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 1364
    .local v20, rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v5

    .line 1367
    .local v5, curName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v5, v14}, Lorg/apache/harmony/javax/naming/Name;->startsWith(Lorg/apache/harmony/javax/naming/Name;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1368
    invoke-interface {v5}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v23

    invoke-virtual {v14}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 1370
    invoke-virtual {v14}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->size()I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v11

    .line 1373
    .local v11, elNameStr:Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1375
    const/16 v16, 0x0

    .line 1377
    .local v16, objToPut:Ljava/lang/Object;,"TT;"
    const/4 v9, 0x0

    .line 1379
    .local v9, elNameAbs:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    const/4 v10, 0x0

    .line 1383
    .local v10, elNameRel:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .end local v10           #elNameRel:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    invoke-direct {v10}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    .line 1384
    .restart local v10       #elNameRel:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    invoke-virtual {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 1385
    invoke-virtual {v14}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->clone()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #elNameAbs:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v9, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1386
    .restart local v9       #elNameAbs:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    invoke-virtual {v9, v11}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 1387
    new-instance v8, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V

    .line 1389
    .local v8, elCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 1388
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v8, v10, v0, v1, v2}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;

    move-result-object v12

    .line 1390
    .local v12, elObj:Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .line 1402
    .end local v16           #objToPut:Ljava/lang/Object;,"TT;"
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v13, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 1407
    .end local v5           #curName:Lorg/apache/harmony/javax/naming/Name;
    .end local v8           #elCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    .end local v9           #elNameAbs:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    .end local v10           #elNameRel:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    .end local v11           #elNameStr:Ljava/lang/String;
    .end local v12           #elObj:Ljava/lang/Object;
    .end local v13           #entries:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;TT;>;"
    .end local v18           #resEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v19           #result:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<TT;>;"
    .end local v20           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v21           #targetCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    :catch_0
    move-exception v6

    .line 1408
    .local v6, e:Ljava/lang/SecurityException;
    throw v6

    .line 1393
    .end local v6           #e:Ljava/lang/SecurityException;
    .restart local v5       #curName:Lorg/apache/harmony/javax/naming/Name;
    .restart local v8       #elCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    .restart local v9       #elNameAbs:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    .restart local v10       #elNameRel:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    .restart local v11       #elNameStr:Ljava/lang/String;
    .restart local v12       #elObj:Ljava/lang/Object;
    .restart local v13       #entries:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;TT;>;"
    .restart local v16       #objToPut:Ljava/lang/Object;,"TT;"
    .restart local v18       #resEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .restart local v19       #result:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<TT;>;"
    .restart local v20       #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .restart local v21       #targetCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    :pswitch_0
    :try_start_1
    new-instance v16, Lorg/apache/harmony/javax/naming/NameClassPair;

    .line 1394
    .end local v16           #objToPut:Ljava/lang/Object;,"TT;"
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    .line 1393
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v11, v1, v2}, Lorg/apache/harmony/javax/naming/NameClassPair;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1395
    .local v16, objToPut:Lorg/apache/harmony/javax/naming/NameClassPair;,"TT;"
    goto :goto_3

    .line 1398
    .local v16, objToPut:Ljava/lang/Object;,"TT;"
    :pswitch_1
    new-instance v16, Lorg/apache/harmony/javax/naming/Binding;

    .line 1399
    .end local v16           #objToPut:Ljava/lang/Object;,"TT;"
    const/16 v23, 0x1

    .line 1398
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-direct {v0, v11, v12, v1}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .local v16, objToPut:Lorg/apache/harmony/javax/naming/Binding;,"TT;"
    goto :goto_3

    .line 1409
    .end local v5           #curName:Lorg/apache/harmony/javax/naming/Name;
    .end local v8           #elCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    .end local v9           #elNameAbs:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    .end local v10           #elNameRel:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    .end local v11           #elNameStr:Ljava/lang/String;
    .end local v12           #elObj:Ljava/lang/Object;
    .end local v13           #entries:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;TT;>;"
    .end local v16           #objToPut:Lorg/apache/harmony/javax/naming/Binding;,"TT;"
    .end local v18           #resEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v19           #result:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<TT;>;"
    .end local v20           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v21           #targetCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    :catch_1
    move-exception v6

    .line 1410
    .local v6, e:Lorg/apache/harmony/javax/naming/NamingException;
    throw v6

    .line 1411
    .end local v6           #e:Lorg/apache/harmony/javax/naming/NamingException;
    :catch_2
    move-exception v6

    .line 1412
    .local v6, e:Ljava/lang/Exception;
    new-instance v7, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v7, e2:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v7, v6}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1415
    throw v7

    .line 1390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseBoolProp(Ljava/lang/String;)V
    .locals 3
    .parameter "paramName"

    .prologue
    .line 1721
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1722
    .local v0, tmp:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1724
    .local v1, val:Z
    if-eqz v0, :cond_1

    .line 1725
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1726
    const/4 v1, 0x1

    .line 1728
    :cond_0
    const-string v2, "java.naming.authoritative"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1729
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->authoritative:Z

    .line 1734
    :cond_1
    :goto_0
    return-void

    .line 1730
    :cond_2
    const-string v2, "org.apache.harmony.jndi.provider.dns.recursion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1731
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->recursion:Z

    goto :goto_0
.end method

.method private parseIntProp(Ljava/lang/String;)V
    .locals 4
    .parameter "paramName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1746
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1748
    .local v2, tmp:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1750
    :try_start_0
    check-cast v2, Ljava/lang/String;

    .end local v2           #tmp:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1752
    .local v1, n:I
    const-string v3, "org.apache.harmony.jndi.provider.dns.timeout.retries"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1753
    iput v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutRetries:I

    .line 1763
    .end local v1           #n:I
    :cond_0
    :goto_0
    return-void

    .line 1754
    .restart local v1       #n:I
    :cond_1
    const-string v3, "org.apache.harmony.jndi.provider.dns.timeout.initial"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1755
    iput v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutInitial:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1759
    .end local v1           #n:I
    :catch_0
    move-exception v0

    .line 1760
    .local v0, e:Ljava/lang/NumberFormatException;
    throw v0

    .line 1756
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #n:I
    :cond_2
    :try_start_1
    const-string v3, "org.apache.harmony.jndi.provider.dns.threads.max"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1757
    iput v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->maxThreads:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private parseLookupProp()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/ConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 1775
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v6, "org.apache.harmony.jndi.provider.dns.lookup.attr"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1781
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v6, "org.apache.harmony.jndi.provider.dns.lookup.attr"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1782
    .local v4, tmp:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v1, v4

    .line 1783
    check-cast v1, Ljava/lang/String;

    .line 1784
    .local v1, lookupAttr:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1785
    .local v0, k:I
    if-le v0, v7, :cond_1

    .line 1786
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1789
    .local v2, recClassName:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getRecordClassNumber(Ljava/lang/String;)I

    move-result v5

    .line 1788
    iput v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    .line 1790
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    if-ne v5, v7, :cond_0

    .line 1792
    new-instance v5, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 1793
    const-string v6, "jndi.46"

    .line 1792
    invoke-static {v6, v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1795
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1800
    .end local v2           #recClassName:Ljava/lang/String;
    .local v3, recTypeName:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getRecordTypeNumber(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrType:I

    .line 1801
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrType:I

    if-ne v5, v7, :cond_2

    .line 1803
    new-instance v5, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 1804
    const-string v6, "jndi.47"

    .line 1803
    invoke-static {v6, v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1797
    .end local v3           #recTypeName:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    iput v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    .line 1798
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #recTypeName:Ljava/lang/String;
    goto :goto_0

    .line 1808
    .end local v0           #k:I
    .end local v1           #lookupAttr:Ljava/lang/String;
    .end local v3           #recTypeName:Ljava/lang/String;
    .end local v4           #tmp:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private parseProviderUrlProp()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1820
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v7, "java.naming.provider.url"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1821
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    const-string v7, "java.naming.provider.url"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1822
    .local v4, tmp:Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1823
    new-instance v3, Ljava/util/StringTokenizer;

    check-cast v4, Ljava/lang/String;

    .line 1824
    .end local v4           #tmp:Ljava/lang/Object;
    const-string v6, " "

    .line 1823
    invoke-direct {v3, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    .local v3, st:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1863
    .end local v3           #st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    return-void

    .line 1827
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1831
    .local v5, token:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;

    invoke-direct {v0, v5}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v0, dnsURL:Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->isHostIpGiven()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1833
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 1834
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getPort()I

    move-result v9

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getDomain()Ljava/lang/String;

    move-result-object v10

    .line 1833
    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->addInitialServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1839
    :goto_2
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-nez v6, :cond_4

    .line 1840
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    .line 1841
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getDomain()Ljava/lang/String;

    move-result-object v7

    .line 1840
    invoke-virtual {v6, v7}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    iput-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1853
    .end local v0           #dnsURL:Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;
    :catch_0
    move-exception v1

    .line 1855
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 1856
    const-string v7, "jndi.49"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 1855
    invoke-static {v7, v5, v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1836
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dnsURL:Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getHost()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1837
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getPort()I

    move-result v9

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getDomain()Ljava/lang/String;

    move-result-object v10

    .line 1836
    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->addInitialServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 1843
    :cond_4
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    .line 1844
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    .line 1843
    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1846
    .local v2, name2:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-virtual {v2, v6}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1848
    new-instance v6, Lorg/apache/harmony/javax/naming/ConfigurationException;

    .line 1850
    const-string v7, "jndi.48"

    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1849
    invoke-static {v7, v8, v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1848
    invoke-direct {v6, v7}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1861
    .end local v0           #dnsURL:Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;
    .end local v2           #name2:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v5           #token:Ljava/lang/String;
    :cond_5
    sget-object v6, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->ROOT_ZONE_NAME_OBJ:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    iput-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    goto :goto_1
.end method


# virtual methods
.method public addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, oldVal:Ljava/lang/Object;
    const-string v1, "java.naming.authoritative"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const-string v1, "java.naming.authoritative"

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseBoolProp(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->authoritative:Z

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->setAuthoritativeAnswerDesired(Z)V

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    const-string v1, "org.apache.harmony.jndi.provider.dns.recursion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    const-string v1, "org.apache.harmony.jndi.provider.dns.recursion"

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseBoolProp(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->recursion:Z

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->setRecursionDesired(Z)V

    goto :goto_0

    .line 243
    :cond_2
    const-string v1, "org.apache.harmony.jndi.provider.dns.timeout.initial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    const-string v1, "org.apache.harmony.jndi.provider.dns.timeout.initial"

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseIntProp(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutInitial:I

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->setInitialTimeout(I)V

    goto :goto_0

    .line 246
    :cond_3
    const-string v1, "org.apache.harmony.jndi.provider.dns.timeout.retries"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    const-string v1, "org.apache.harmony.jndi.provider.dns.timeout.retries"

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseIntProp(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->timeoutRetries:I

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->setTimeoutRetries(I)V

    goto :goto_0

    .line 249
    :cond_4
    const-string v1, "org.apache.harmony.jndi.provider.dns.threads.max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    const-string v1, "org.apache.harmony.jndi.provider.dns.threads.max"

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseIntProp(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->maxThreads:I

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->setThreadNumberLimit(I)V

    goto :goto_0

    .line 252
    :cond_5
    const-string v1, "org.apache.harmony.jndi.provider.dns.lookup.attr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseLookupProp()V

    goto :goto_0

    .line 254
    :cond_6
    const-string v1, "java.naming.provider.url"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->parseProviderUrlProp()V

    goto :goto_0
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 330
    return-void
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 275
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/Context;

    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lorg/apache/harmony/javax/naming/Context;->bind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    return-void

    .line 272
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 279
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4E"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 296
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 300
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 306
    return-void

    .line 297
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 304
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4A"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 341
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v0, clone:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->initialize(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V

    .line 347
    .end local v0           #clone:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 358
    return-void
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, name1:Lorg/apache/harmony/javax/naming/Name;
    const/4 v2, 0x0

    .line 519
    .local v2, name2:Lorg/apache/harmony/javax/naming/Name;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 521
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "jndi.51"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 523
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 540
    .end local p2
    :goto_0
    return-object p2

    .line 526
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    move-object p2, p1

    .line 527
    goto :goto_0

    .line 530
    :cond_3
    :try_start_0
    new-instance v1, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v1, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v0           #name1:Lorg/apache/harmony/javax/naming/Name;
    .local v1, name1:Lorg/apache/harmony/javax/naming/Name;
    :try_start_1
    new-instance v3, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v3, p2}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #name2:Lorg/apache/harmony/javax/naming/Name;
    .local v3, name2:Lorg/apache/harmony/javax/naming/Name;
    move-object v2, v3

    .end local v3           #name2:Lorg/apache/harmony/javax/naming/Name;
    .restart local v2       #name2:Lorg/apache/harmony/javax/naming/Name;
    move-object v0, v1

    .line 534
    .end local v1           #name1:Lorg/apache/harmony/javax/naming/Name;
    .restart local v0       #name1:Lorg/apache/harmony/javax/naming/Name;
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v4

    if-gt v4, v5, :cond_5

    .line 535
    :cond_4
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    invoke-virtual {v4, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 537
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v4

    if-gt v4, v5, :cond_7

    .line 538
    :cond_6
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    invoke-virtual {v4, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    .line 540
    :cond_7
    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 532
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v0           #name1:Lorg/apache/harmony/javax/naming/Name;
    .restart local v1       #name1:Lorg/apache/harmony/javax/naming/Name;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1           #name1:Lorg/apache/harmony/javax/naming/Name;
    .restart local v0       #name1:Lorg/apache/harmony/javax/naming/Name;
    goto :goto_1
.end method

.method public composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 11
    .parameter "name"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 392
    const/4 v6, 0x0

    .line 394
    .local v6, result:Lorg/apache/harmony/javax/naming/Name;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 396
    :cond_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "jndi.51"

    invoke-static {v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 398
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 486
    .end local p2
    :goto_0
    return-object p2

    .line 401
    .restart local p2
    :cond_2
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v10

    if-nez v10, :cond_3

    move-object p2, p1

    .line 402
    goto :goto_0

    .line 404
    :cond_3
    instance-of v10, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v10, :cond_6

    instance-of v10, p2, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v10, :cond_6

    .line 407
    invoke-interface {p1, v9}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, comp1:Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, comp2:Ljava/lang/String;
    new-instance v6, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v6           #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v6}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 411
    .restart local v6       #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v9

    if-le v9, v8, :cond_4

    .line 412
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 415
    :cond_4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->concatenateDNSNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v9

    if-le v9, v8, :cond_5

    .line 423
    invoke-interface {p1, v8}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .end local v0           #comp1:Ljava/lang/String;
    .end local v1           #comp2:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object p2, v6

    .line 486
    goto :goto_0

    .line 416
    .restart local v0       #comp1:Ljava/lang/String;
    .restart local v1       #comp2:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 419
    .local v2, e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    invoke-interface {v6, v1}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 420
    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    goto :goto_1

    .line 425
    .end local v0           #comp1:Ljava/lang/String;
    .end local v1           #comp2:Ljava/lang/String;
    .end local v2           #e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    :cond_6
    instance-of v10, p2, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v10, :cond_8

    instance-of v10, p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-eqz v10, :cond_8

    .line 428
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .restart local v0       #comp1:Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    .restart local v1       #comp2:Ljava/lang/String;
    new-instance v6, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v6           #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v6}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 432
    .restart local v6       #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v9

    if-le v9, v8, :cond_7

    .line 433
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p2, v8}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 436
    :cond_7
    :try_start_1
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->concatenateDNSNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 437
    :catch_1
    move-exception v2

    .line 440
    .restart local v2       #e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    invoke-interface {v6, v1}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 441
    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    goto :goto_2

    .line 443
    .end local v0           #comp1:Ljava/lang/String;
    .end local v1           #comp2:Ljava/lang/String;
    .end local v2           #e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    :cond_8
    instance-of v10, p2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-eqz v10, :cond_9

    instance-of v10, p1, Lorg/apache/harmony/javax/naming/CompositeName;

    if-eqz v10, :cond_9

    .line 446
    invoke-interface {p1, v9}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0       #comp1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .restart local v1       #comp2:Ljava/lang/String;
    new-instance v6, Lorg/apache/harmony/javax/naming/CompositeName;

    .end local v6           #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v6}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>()V

    .line 451
    .restart local v6       #result:Lorg/apache/harmony/javax/naming/Name;
    :try_start_2
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->concatenateDNSNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    :try_end_2
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_2 .. :try_end_2} :catch_2

    .line 458
    :goto_3
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v9

    if-le v9, v8, :cond_5

    .line 459
    invoke-interface {p1, v8}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    goto :goto_2

    .line 452
    :catch_2
    move-exception v2

    .line 455
    .restart local v2       #e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    invoke-interface {v6, v1}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 456
    invoke-interface {v6, v0}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    goto :goto_3

    .line 461
    .end local v0           #comp1:Ljava/lang/String;
    .end local v1           #comp2:Ljava/lang/String;
    .end local v2           #e:Lorg/apache/harmony/javax/naming/InvalidNameException;
    :cond_9
    instance-of v10, p2, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-eqz v10, :cond_f

    instance-of v10, p1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    if-eqz v10, :cond_f

    .line 462
    sget-object v7, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->ROOT_ZONE_NAME_OBJ:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 463
    .local v7, rootZone:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    invoke-interface {p2, v7}, Lorg/apache/harmony/javax/naming/Name;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_a

    move v5, v8

    .line 464
    .local v5, prefixIsRoot:Z
    :goto_4
    invoke-interface {p1, v7}, Lorg/apache/harmony/javax/naming/Name;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_b

    move v3, v8

    .line 465
    .local v3, nameIsRoot:Z
    :goto_5
    invoke-interface {p1, v9}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 467
    .local v4, nameStartsFromRoot:Z
    if-eqz v4, :cond_c

    .line 469
    new-instance v8, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v9, "jndi.52"

    invoke-static {v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v3           #nameIsRoot:Z
    .end local v4           #nameStartsFromRoot:Z
    .end local v5           #prefixIsRoot:Z
    :cond_a
    move v5, v9

    .line 463
    goto :goto_4

    .restart local v5       #prefixIsRoot:Z
    :cond_b
    move v3, v9

    .line 464
    goto :goto_5

    .line 471
    .restart local v3       #nameIsRoot:Z
    .restart local v4       #nameStartsFromRoot:Z
    :cond_c
    if-eqz v5, :cond_d

    if-eqz v3, :cond_d

    .line 472
    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->clone()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #result:Lorg/apache/harmony/javax/naming/Name;
    check-cast v6, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .restart local v6       #result:Lorg/apache/harmony/javax/naming/Name;
    goto/16 :goto_2

    .line 473
    :cond_d
    if-nez v5, :cond_e

    if-eqz v3, :cond_e

    .line 475
    new-instance v8, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v9, "jndi.53"

    invoke-static {v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 477
    :cond_e
    new-instance v6, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .end local v6           #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-direct {v6}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    .line 478
    .restart local v6       #result:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v6, p2}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 479
    invoke-interface {v6, p1}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    goto/16 :goto_2

    .line 484
    .end local v3           #nameIsRoot:Z
    .end local v4           #nameStartsFromRoot:Z
    .end local v5           #prefixIsRoot:Z
    .end local v7           #rootZone:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :cond_f
    new-instance v8, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v9, "jndi.4B"

    invoke-static {v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 678
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 682
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v2, :cond_0

    .line 683
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/Context;

    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/naming/Context;->createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v2

    return-object v2

    .line 679
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 680
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 686
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4E"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 701
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 705
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v2, :cond_0

    .line 706
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 707
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v2

    .line 706
    return-object v2

    .line 702
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 710
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4A"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 765
    return-void
.end method

.method public destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 745
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 749
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/Context;

    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/naming/Context;->destroySubcontext(Ljava/lang/String;)V

    .line 755
    return-void

    .line 746
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 753
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4E"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 779
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    check-cast p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x1

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .parameter "attrNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

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
    .line 800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 32
    .parameter "name"
    .parameter "attrNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 847
    const/16 v18, 0x0

    .line 848
    .local v18, nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    const/4 v3, 0x0

    .line 849
    .local v3, altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    const/16 v22, 0x0

    .line 850
    .local v22, remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    const/4 v4, 0x0

    .line 853
    .local v4, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    if-nez p1, :cond_0

    .line 855
    new-instance v28, Ljava/lang/NullPointerException;

    const-string v29, "jndi.2E"

    invoke-static/range {v29 .. v29}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 856
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v28

    if-nez v28, :cond_2

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->clone()Ljava/lang/Object;

    move-result-object v18

    .end local v18           #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v18, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 886
    .restart local v18       #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :cond_1
    :goto_0
    if-eqz v22, :cond_5

    .line 887
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->constructCannotProceedException(Lorg/apache/harmony/jndi/provider/dns/DNSName;Lorg/apache/harmony/javax/naming/CompositeName;)Lorg/apache/harmony/javax/naming/CannotProceedException;

    move-result-object v9

    .line 890
    .local v9, cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-static {v9}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getContinuationDirContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v20

    .line 892
    .local v20, nnsContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v4

    .line 978
    .end local v9           #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    .end local v20           #nnsContext:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :goto_1
    return-object v4

    .line 859
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/harmony/javax/naming/CompositeName;

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 862
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v23

    .line 864
    .local v23, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    .end local v3           #altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 866
    .restart local v3       #altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v18

    .end local v18           #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v18, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 870
    .restart local v18       #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 871
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v22

    .end local v22           #remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    check-cast v22, Lorg/apache/harmony/javax/naming/CompositeName;

    .restart local v22       #remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    goto :goto_0

    .line 873
    .end local v23           #tmp:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v18

    .end local v18           #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v18, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .restart local v18       #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    goto :goto_0

    .line 882
    :cond_4
    new-instance v28, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v29, "jndi.4B"

    invoke-static/range {v29 .. v29}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 895
    :cond_5
    if-nez p2, :cond_7

    .line 897
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 898
    .local v25, types:[I
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v7, v0, [I

    .line 899
    .local v7, classes:[I
    const/16 v28, 0x0

    const/16 v29, 0xff

    aput v29, v25, v28

    .line 900
    const/16 v28, 0x0

    const/16 v29, 0xff

    aput v29, v7, v28

    .line 960
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    move-object/from16 v28, v0

    .line 961
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->toString()Ljava/lang/String;

    move-result-object v29

    .line 960
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v7}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->lookup(Ljava/lang/String;[I[I)Ljava/util/Enumeration;

    move-result-object v21

    .line 963
    .local v21, records:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    invoke-static/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->createAttributesFromRecords(Ljava/util/Enumeration;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto/16 :goto_1

    .line 902
    .end local v7           #classes:[I
    .end local v21           #records:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v25           #types:[I
    :cond_7
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 903
    .local v8, classesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 907
    .local v27, typesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v29, v0

    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    .line 937
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v7, v0, [I

    .line 938
    .restart local v7       #classes:[I
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 939
    .local v13, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 940
    .local v14, j:I
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_c

    .line 946
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 947
    .restart local v25       #types:[I
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 948
    const/4 v14, 0x0

    .line 949
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 950
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 952
    .local v17, n:Ljava/lang/Integer;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #j:I
    .local v15, j:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v25, v14

    move v14, v15

    .end local v15           #j:I
    .restart local v14       #j:I
    goto :goto_4

    .line 907
    .end local v7           #classes:[I
    .end local v13           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14           #j:I
    .end local v17           #n:Ljava/lang/Integer;
    .end local v25           #types:[I
    :cond_8
    aget-object v12, p2, v28

    .line 908
    .local v12, element:Ljava/lang/String;
    const/16 v30, 0x20

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 909
    .local v16, k:I
    const/16 v24, 0x0

    .line 913
    .local v24, typeStr:Ljava/lang/String;
    if-lez v16, :cond_a

    .line 914
    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 916
    .local v6, classStr:Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getRecordClassNumber(Ljava/lang/String;)I

    move-result v5

    .line 917
    .local v5, classInt:I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v5, v0, :cond_9

    .line 919
    new-instance v28, Lorg/apache/harmony/javax/naming/directory/InvalidAttributeIdentifierException;

    .line 920
    const-string v29, "jndi.4C"

    move-object/from16 v0, v29

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 919
    invoke-direct/range {v28 .. v29}, Lorg/apache/harmony/javax/naming/directory/InvalidAttributeIdentifierException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 922
    :cond_9
    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 928
    .end local v5           #classInt:I
    .end local v6           #classStr:Ljava/lang/String;
    :goto_5
    invoke-static/range {v24 .. v24}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getRecordTypeNumber(Ljava/lang/String;)I

    move-result v26

    .line 929
    .local v26, typesInt:I
    const/16 v30, -0x1

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 931
    new-instance v28, Lorg/apache/harmony/javax/naming/directory/InvalidAttributeIdentifierException;

    .line 932
    const-string v29, "jndi.4D"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 931
    invoke-direct/range {v28 .. v29}, Lorg/apache/harmony/javax/naming/directory/InvalidAttributeIdentifierException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 925
    .end local v26           #typesInt:I
    :cond_a
    new-instance v30, Ljava/lang/Integer;

    const/16 v31, 0x1

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    goto :goto_5

    .line 934
    .restart local v26       #typesInt:I
    :cond_b
    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 907
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 941
    .end local v12           #element:Ljava/lang/String;
    .end local v16           #k:I
    .end local v24           #typeStr:Ljava/lang/String;
    .end local v26           #typesInt:I
    .restart local v7       #classes:[I
    .restart local v13       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v14       #j:I
    :cond_c
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 943
    .restart local v17       #n:Ljava/lang/Integer;
    add-int/lit8 v15, v14, 0x1

    .end local v14           #j:I
    .restart local v15       #j:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v7, v14

    move v14, v15

    .end local v15           #j:I
    .restart local v14       #j:I
    goto/16 :goto_3

    .line 964
    .end local v8           #classesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v13           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14           #j:I
    .end local v17           #n:Ljava/lang/Integer;
    .end local v27           #typesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v25       #types:[I
    :catch_0
    move-exception v10

    .line 965
    .local v10, e:Ljava/lang/SecurityException;
    new-instance v11, Lorg/apache/harmony/javax/naming/NoPermissionException;

    invoke-direct {v11}, Lorg/apache/harmony/javax/naming/NoPermissionException;-><init>()V

    .line 967
    .local v11, e2:Lorg/apache/harmony/javax/naming/NoPermissionException;
    invoke-virtual {v11, v10}, Lorg/apache/harmony/javax/naming/NoPermissionException;->setRootCause(Ljava/lang/Throwable;)V

    .line 968
    throw v11

    .line 969
    .end local v10           #e:Ljava/lang/SecurityException;
    .end local v11           #e2:Lorg/apache/harmony/javax/naming/NoPermissionException;
    :catch_1
    move-exception v10

    .line 970
    .local v10, e:Lorg/apache/harmony/javax/naming/NamingException;
    throw v10

    .line 971
    .end local v10           #e:Lorg/apache/harmony/javax/naming/NamingException;
    :catch_2
    move-exception v10

    .line 972
    .local v10, e:Ljava/lang/Exception;
    new-instance v19, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-direct/range {v19 .. v19}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 974
    .local v19, ne:Lorg/apache/harmony/javax/naming/NamingException;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 975
    throw v19
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
    .line 1026
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1089
    if-nez p1, :cond_0

    .line 1091
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "jndi.2E"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1093
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1094
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_1

    .line 1095
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    .line 1097
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1096
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v1, :cond_2

    .line 1097
    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v1

    goto :goto_0

    .line 1100
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4E"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 1058
    if-nez p1, :cond_0

    .line 1060
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "jndi.2E"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1062
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 1063
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_1

    .line 1064
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    .line 1066
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1065
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v1, :cond_2

    .line 1066
    check-cast v0, Lorg/apache/harmony/javax/naming/Context;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Context;->getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;

    move-result-object v1

    goto :goto_0

    .line 1069
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4E"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1131
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1132
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1133
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1134
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    return-object v1

    .line 1137
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 1112
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1113
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1114
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1115
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    return-object v1

    .line 1118
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1171
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1172
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1173
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1174
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    return-object v1

    .line 1177
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1149
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 1151
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1152
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1153
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1154
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    return-object v1

    .line 1157
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 2
    .parameter "name"
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
    .line 1277
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->list_common(Lorg/apache/harmony/javax/naming/Name;I)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
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
    .line 1260
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->list_common(Lorg/apache/harmony/javax/naming/Name;I)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 2
    .parameter "name"
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
    .line 1453
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->list_common(Lorg/apache/harmony/javax/naming/Name;I)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
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
    .line 1436
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->list_common(Lorg/apache/harmony/javax/naming/Name;I)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 20
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1484
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 1485
    .local v17, types:[I
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v5, v0, [I

    .line 1486
    .local v5, classes:[I
    const/4 v9, 0x0

    .line 1487
    .local v9, nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    const/4 v3, 0x0

    .line 1488
    .local v3, altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    const/4 v13, 0x0

    .line 1489
    .local v13, remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    const/4 v15, 0x0

    .line 1492
    .local v15, result:Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 1494
    new-instance v18, Ljava/lang/NullPointerException;

    const-string v19, "jndi.2E"

    invoke-static/range {v19 .. v19}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1495
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v18

    if-nez v18, :cond_2

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->clone()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v9, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1524
    .restart local v9       #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :cond_1
    :goto_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrType:I

    move/from16 v19, v0

    aput v19, v17, v18

    .line 1525
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookupAttrClass:I

    move/from16 v19, v0

    aput v19, v5, v18

    .line 1526
    if-eqz v13, :cond_5

    .line 1527
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->constructCannotProceedException(Lorg/apache/harmony/jndi/provider/dns/DNSName;Lorg/apache/harmony/javax/naming/CompositeName;)Lorg/apache/harmony/javax/naming/CannotProceedException;

    move-result-object v6

    .line 1530
    .local v6, cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    invoke-static {v6}, Lorg/apache/harmony/javax/naming/spi/NamingManager;->getContinuationContext(Lorg/apache/harmony/javax/naming/CannotProceedException;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v11

    .line 1532
    .local v11, nnsContext:Lorg/apache/harmony/javax/naming/Context;
    invoke-interface {v11, v13}, Lorg/apache/harmony/javax/naming/Context;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v15

    .line 1558
    .end local v6           #cpe:Lorg/apache/harmony/javax/naming/CannotProceedException;
    .end local v11           #nnsContext:Lorg/apache/harmony/javax/naming/Context;
    :goto_1
    return-object v15

    .line 1498
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/harmony/javax/naming/CompositeName;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1501
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v16

    .line 1503
    .local v16, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->nameParser:Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    .end local v3           #altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1505
    .restart local v3       #altName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    .end local v9           #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v9, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 1509
    .restart local v9       #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 1510
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v13

    .end local v13           #remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    check-cast v13, Lorg/apache/harmony/javax/naming/CompositeName;

    .restart local v13       #remainingName:Lorg/apache/harmony/javax/naming/CompositeName;
    goto :goto_0

    .line 1512
    .end local v16           #tmp:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->contextName:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    .end local v9           #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    check-cast v9, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .restart local v9       #nameToLookFor:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    goto/16 :goto_0

    .line 1521
    :cond_4
    new-instance v18, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v19, "jndi.4B"

    invoke-static/range {v19 .. v19}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1535
    :cond_5
    :try_start_0
    new-instance v14, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;-><init>(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Lorg/apache/harmony/jndi/provider/dns/DNSName;)V

    .line 1537
    .local v14, resolvedCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->resolver:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    move-object/from16 v18, v0

    .line 1538
    invoke-virtual {v9}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1537
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->lookup(Ljava/lang/String;[I[I)Ljava/util/Enumeration;

    move-result-object v12

    .line 1539
    .local v12, records:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    invoke-static {v12}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->createAttributesFromRecords(Ljava/util/Enumeration;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v4

    .line 1542
    .local v4, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    .line 1541
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-static {v14, v0, v1, v2, v4}, Lorg/apache/harmony/javax/naming/spi/DirectoryManager;->getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v15

    goto/16 :goto_1

    .line 1543
    .end local v4           #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v12           #records:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v14           #resolvedCtx:Lorg/apache/harmony/jndi/provider/dns/DNSContext;
    :catch_0
    move-exception v7

    .line 1544
    .local v7, e:Ljava/lang/SecurityException;
    new-instance v8, Lorg/apache/harmony/javax/naming/NoPermissionException;

    .line 1545
    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v18

    .line 1544
    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lorg/apache/harmony/javax/naming/NoPermissionException;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v8, e2:Lorg/apache/harmony/javax/naming/NoPermissionException;
    invoke-virtual {v8, v7}, Lorg/apache/harmony/javax/naming/NoPermissionException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1548
    throw v8

    .line 1549
    .end local v7           #e:Ljava/lang/SecurityException;
    .end local v8           #e2:Lorg/apache/harmony/javax/naming/NoPermissionException;
    :catch_1
    move-exception v7

    .line 1550
    .local v7, e:Lorg/apache/harmony/javax/naming/NamingException;
    throw v7

    .line 1551
    .end local v7           #e:Lorg/apache/harmony/javax/naming/NamingException;
    :catch_2
    move-exception v7

    .line 1552
    .local v7, e:Ljava/lang/Exception;
    new-instance v10, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v10, ne:Lorg/apache/harmony/javax/naming/NamingException;
    invoke-virtual {v10, v7}, Lorg/apache/harmony/javax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 1555
    throw v10
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1626
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 1607
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1680
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1682
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1683
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1684
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1685
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 1690
    return-void

    .line 1688
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1703
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1704
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1705
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1706
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 1711
    return-void

    .line 1709
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 1640
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1641
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1642
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1643
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 1648
    return-void

    .line 1646
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1659
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 1661
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 1662
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 1663
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 1664
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 1669
    return-void

    .line 1667
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1921
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V

    .line 1922
    return-void
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1934
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 1935
    return-void
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1876
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1880
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v2, :cond_0

    .line 1881
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/Context;

    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lorg/apache/harmony/javax/naming/Context;->rebind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1886
    return-void

    .line 1877
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 1878
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 1884
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4E"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1901
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1905
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v2, :cond_0

    .line 1906
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/DirContext;

    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 1911
    return-void

    .line 1902
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 1903
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 1909
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4A"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 1946
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->environment:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1987
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V

    .line 1988
    return-void
.end method

.method public rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 1961
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;

    move-result-object v1

    .line 1962
    .local v1, pair1:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    invoke-direct {p0, p2}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1966
    .local v2, pair2:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v3, v3, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v3, :cond_0

    .line 1967
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1968
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1969
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v3, Lorg/apache/harmony/javax/naming/Context;

    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/Context;->getNameInNamespace()Ljava/lang/String;

    move-result-object v4

    .line 1970
    iget-object v3, v2, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v3, Lorg/apache/harmony/javax/naming/Context;

    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/Context;->getNameInNamespace()Ljava/lang/String;

    move-result-object v3

    .line 1969
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1971
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v3, Lorg/apache/harmony/javax/naming/Context;

    iget-object v4, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    iget-object v5, v2, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/harmony/javax/naming/Context;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    return-void

    .line 1963
    .end local v1           #pair1:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    .end local v2           #pair2:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 1964
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v3}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v3

    .line 1975
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair1:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    .restart local v2       #pair2:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v3, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v4, "jndi.4F"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
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
    .line 2152
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2154
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2155
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2156
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2157
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2160
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 2130
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2132
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2133
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2134
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2135
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2138
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
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
    .line 2086
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2088
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2089
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2090
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2091
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2094
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
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
    .line 2108
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2110
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2111
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2112
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2113
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2116
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
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
    .line 2065
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 2067
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2068
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2069
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2070
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2073
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 2043
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 2045
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2046
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2047
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2048
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2051
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
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
    .line 1999
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 2001
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2002
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2003
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2004
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2007
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
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
    .line 2021
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 2023
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    if-eqz v1, :cond_0

    .line 2024
    new-instance v1, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v1

    .line 2025
    :cond_0
    instance-of v1, v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v1, :cond_1

    .line 2026
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local v0           #obj:Ljava/lang/Object;
    const-string v1, ""

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    return-object v1

    .line 2029
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v2, "jndi.4A"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2193
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->convertNameFromStringForm(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->unbind(Lorg/apache/harmony/javax/naming/Name;)V

    .line 2194
    return-void
.end method

.method public unbind(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 2174
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->getTargetNamespaceContextNamePair(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2178
    .local v1, pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/Context;

    if-eqz v2, :cond_0

    .line 2179
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    check-cast v2, Lorg/apache/harmony/javax/naming/Context;

    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/naming/Context;->unbind(Ljava/lang/String;)V

    .line 2184
    return-void

    .line 2175
    .end local v1           #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :catch_0
    move-exception v0

    .line 2176
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v2

    .line 2182
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #pair:Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v3, "jndi.4E"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
