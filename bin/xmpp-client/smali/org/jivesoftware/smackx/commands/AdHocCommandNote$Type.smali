.class public final enum Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
.super Ljava/lang/Enum;
.source "AdHocCommandNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

.field public static final enum error:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

.field public static final enum info:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

.field public static final enum warn:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    const-string v1, "info"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->info:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    .line 42
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    const-string v1, "warn"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->warn:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    const-string v1, "error"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->error:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->info:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->warn:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->error:Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->ENUM$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->ENUM$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
