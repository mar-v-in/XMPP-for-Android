.class public Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
.super Ljava/lang/Object;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemStatus"
.end annotation


# static fields
.field public static final SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field public static final UNSUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 197
    const-string v1, "subscribe"

    .line 196
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 202
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 203
    const-string v1, "unsubscribe"

    .line 202
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 191
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->value:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 206
    if-nez p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 210
    const-string v1, "unsubscribe"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    goto :goto_0

    .line 212
    :cond_2
    const-string v1, "subscribe"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->value:Ljava/lang/String;

    return-object v0
.end method
