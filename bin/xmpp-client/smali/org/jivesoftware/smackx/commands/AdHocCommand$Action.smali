.class public final enum Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
.super Ljava/lang/Enum;
.source "AdHocCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v1, "execute"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    .line 87
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 89
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v1, "cancel"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 94
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v1, "prev"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    .line 97
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 99
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v1, "next"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    .line 102
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 104
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v1, "complete"

    invoke-direct {v0, v1, v7}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    .line 107
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 109
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const-string v1, "unknown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    .line 113
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->ENUM$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->ENUM$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
