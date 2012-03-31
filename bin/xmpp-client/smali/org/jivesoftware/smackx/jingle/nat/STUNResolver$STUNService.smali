.class public Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;
.super Ljava/lang/Object;
.source "STUNResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "STUNService"
.end annotation


# instance fields
.field private hostname:Ljava/lang/String;

.field private port:I

.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;-><init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->this$0:Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->hostname:Ljava/lang/String;

    .line 81
    iput p3, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->port:I

    .line 82
    return-void
.end method


# virtual methods
.method public checkBinding()Z
    .locals 5

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 95
    .local v2, result:Z
    :try_start_0
    new-instance v0, Lde/javawi/jstun/test/BindingLifetimeTest;

    .line 96
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->hostname:Ljava/lang/String;

    iget v4, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->port:I

    .line 95
    invoke-direct {v0, v3, v4}, Lde/javawi/jstun/test/BindingLifetimeTest;-><init>(Ljava/lang/String;I)V

    .line 98
    .local v0, binding:Lde/javawi/jstun/test/BindingLifetimeTest;
    invoke-virtual {v0}, Lde/javawi/jstun/test/BindingLifetimeTest;->test()V

    .line 101
    :cond_0
    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    invoke-virtual {v0}, Lde/javawi/jstun/test/BindingLifetimeTest;->getLifetime()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 103
    invoke-virtual {v0}, Lde/javawi/jstun/test/BindingLifetimeTest;->isCompleted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v3, 0x1

    .line 114
    .end local v0           #binding:Lde/javawi/jstun/test/BindingLifetimeTest;
    :goto_0
    return v3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver;->access$0()Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->port:I

    return v0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->hostname:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget v1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->port:I

    if-ltz v1, :cond_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0
    .parameter "hostname"

    .prologue
    .line 159
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->hostname:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 169
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/STUNResolver$STUNService;->port:I

    .line 170
    return-void
.end method
