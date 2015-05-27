.class public final enum Lo/pf;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/pf;>;"
    }
.end annotation


# static fields
.field public static final enum UB:Lo/pf;

.field public static final enum UC:Lo/pf;

.field public static final enum UD:Lo/pf;

.field public static final enum UE:Lo/pf;

.field private static final synthetic UF:[Lo/pf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lo/pf;

    const-string v1, "PostThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/pf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/pf;->UB:Lo/pf;

    .line 39
    new-instance v0, Lo/pf;

    const-string v1, "MainThread"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/pf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/pf;->UC:Lo/pf;

    .line 47
    new-instance v0, Lo/pf;

    const-string v1, "BackgroundThread"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/pf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/pf;->UD:Lo/pf;

    .line 56
    new-instance v0, Lo/pf;

    const-string v1, "Async"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/pf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/pf;->UE:Lo/pf;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lo/pf;

    sget-object v1, Lo/pf;->UB:Lo/pf;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/pf;->UC:Lo/pf;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/pf;->UD:Lo/pf;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/pf;->UE:Lo/pf;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/pf;->UF:[Lo/pf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/pf;
    .locals 1

    .line 25
    const-class v0, Lo/pf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/pf;

    return-object v0
.end method

.method public static values()[Lo/pf;
    .locals 1

    .line 25
    sget-object v0, Lo/pf;->UF:[Lo/pf;

    invoke-virtual {v0}, [Lo/pf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/pf;

    return-object v0
.end method
