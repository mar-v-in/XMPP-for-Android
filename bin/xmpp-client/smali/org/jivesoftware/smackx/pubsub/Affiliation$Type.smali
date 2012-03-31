.class public final enum Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
.super Ljava/lang/Enum;
.source "Affiliation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/Affiliation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

.field public static final enum member:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

.field public static final enum none:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

.field public static final enum outcast:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

.field public static final enum owner:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

.field public static final enum publisher:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    const-string v1, "member"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->member:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    const-string v1, "none"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->none:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    const-string v1, "outcast"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->outcast:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    const-string v1, "owner"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->owner:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    const-string v1, "publisher"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->publisher:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->member:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->none:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->outcast:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->owner:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->publisher:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
