.class public final enum Lorg/jivesoftware/smack/Roster$SubscriptionMode;
.super Ljava/lang/Enum;
.source "Roster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/Roster$SubscriptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smack/Roster$SubscriptionMode;

.field public static final enum accept_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

.field public static final enum manual:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

.field public static final enum reject_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    new-instance v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    const-string v1, "accept_all"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/Roster$SubscriptionMode;-><init>(Ljava/lang/String;I)V

    .line 345
    sput-object v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->accept_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    .line 347
    new-instance v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    const-string v1, "reject_all"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/Roster$SubscriptionMode;-><init>(Ljava/lang/String;I)V

    .line 350
    sput-object v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->reject_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    .line 352
    new-instance v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    const-string v1, "manual"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/Roster$SubscriptionMode;-><init>(Ljava/lang/String;I)V

    .line 358
    sput-object v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    .line 337
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    sget-object v1, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->accept_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->reject_all:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->ENUM$VALUES:[Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/Roster$SubscriptionMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->ENUM$VALUES:[Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
