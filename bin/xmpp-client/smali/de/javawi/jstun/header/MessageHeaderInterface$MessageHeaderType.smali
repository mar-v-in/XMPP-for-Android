.class public final enum Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;
.super Ljava/lang/Enum;
.source "MessageHeaderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/javawi/jstun/header/MessageHeaderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageHeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BindingErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum BindingResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

.field private static final synthetic ENUM$VALUES:[Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum SharedSecretErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum SharedSecretRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

.field public static final enum SharedSecretResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "BindingRequest"

    invoke-direct {v0, v1, v3}, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "BindingResponse"

    invoke-direct {v0, v1, v4}, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "BindingErrorResponse"

    invoke-direct {v0, v1, v5}, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "SharedSecretRequest"

    invoke-direct {v0, v1, v6}, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "SharedSecretResponse"

    invoke-direct {v0, v1, v7}, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    new-instance v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    const-string v1, "SharedSecretErrorResponse"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    sget-object v1, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v3

    sget-object v1, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v4

    sget-object v1, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->BindingErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v5

    sget-object v1, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretRequest:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v6

    sget-object v1, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->SharedSecretErrorResponse:Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    aput-object v2, v0, v1

    sput-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->ENUM$VALUES:[Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    return-object v0
.end method

.method public static values()[Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;->ENUM$VALUES:[Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    array-length v1, v0

    new-array v2, v1, [Lde/javawi/jstun/header/MessageHeaderInterface$MessageHeaderType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
