.class public abstract Lorg/jivesoftware/smackx/jingle/JingleNegotiator;
.super Ljava/lang/Object;
.source "JingleNegotiator.java"


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleNegotiatorState:[I

.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private expectedAckId:Ljava/lang/String;

.field private isStarted:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;",
            ">;"
        }
    .end annotation
.end field

.field protected session:Lorg/jivesoftware/smackx/jingle/JingleSession;

.field private state:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleNegotiatorState()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleNegotiatorState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->values()[Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->FAILED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleNegotiatorState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 46
    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->listeners:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 76
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->PENDING:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->state:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    .line 77
    return-void
.end method


# virtual methods
.method public addExpectedId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->expectedAckId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public addListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V
    .locals 2
    .parameter "li"

    .prologue
    .line 96
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v1

    .line 99
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public abstract dispatchIncomingPacket(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/IQ;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/IQ;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method protected abstract doStart()V
.end method

.method public getConnection()Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getListenersList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 162
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    monitor-exit v2

    .line 165
    return-object v0

    .line 161
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->state:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    return-object v0
.end method

.method public getSession()Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    return-object v0
.end method

.method public isExpectedId(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->expectedAckId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->isStarted:Z

    return v0
.end method

.method public removeExpectedId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->addExpectedId(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public removeListener(Lorg/jivesoftware/smackx/jingle/listeners/JingleListener;)V
    .locals 2
    .parameter "li"

    .prologue
    .line 218
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v1

    .line 221
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNegotiatorState(Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;)V
    .locals 4
    .parameter "stateIs"

    .prologue
    .line 225
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->state:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    .line 227
    .local v0, stateWas:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negotiator state change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->debug(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->$SWITCH_TABLE$org$jivesoftware$smackx$jingle$JingleNegotiatorState()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 244
    :pswitch_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->state:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    .line 245
    return-void

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSession(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 254
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->session:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 255
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->isStarted:Z

    .line 259
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/JingleNegotiator;->doStart()V

    .line 260
    return-void
.end method
