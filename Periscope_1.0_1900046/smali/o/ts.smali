.class public final enum Lo/ts;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/ts;>;"
    }
.end annotation


# static fields
.field public static final enum Zm:Lo/ts;

.field public static final enum Zn:Lo/ts;

.field public static final enum Zo:Lo/ts;

.field private static final synthetic Zp:[Lo/ts;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lo/ts;

    const-string v1, "USE_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ts;->Zm:Lo/ts;

    .line 18
    new-instance v0, Lo/ts;

    const-string v1, "SKIP_CACHE_LOOKUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ts;->Zn:Lo/ts;

    .line 23
    new-instance v0, Lo/ts;

    const-string v1, "IGNORE_CACHE_EXPIRATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/ts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ts;->Zo:Lo/ts;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lo/ts;

    sget-object v1, Lo/ts;->Zm:Lo/ts;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/ts;->Zn:Lo/ts;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/ts;->Zo:Lo/ts;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/ts;->Zp:[Lo/ts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ts;
    .locals 1

    .line 8
    const-class v0, Lo/ts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/ts;

    return-object v0
.end method

.method public static values()[Lo/ts;
    .locals 1

    .line 8
    sget-object v0, Lo/ts;->Zp:[Lo/ts;

    invoke-virtual {v0}, [Lo/ts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ts;

    return-object v0
.end method
