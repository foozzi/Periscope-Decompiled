.class abstract enum Lo/zq;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/zq;>;Ljava/util/Comparator<Lo/xh;>;"
    }
.end annotation


# static fields
.field public static final enum bsa:Lo/zq;

.field public static final enum bsb:Lo/zq;

.field public static final enum bsc:Lo/zq;

.field public static final enum bsd:Lo/zq;

.field public static final enum bse:Lo/zq;

.field static bsf:[Lo/zq;

.field private static final synthetic bsg:[Lo/zq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lo/zr;

    const-string v1, "Time"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/zr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/zq;->bsa:Lo/zq;

    .line 15
    new-instance v0, Lo/zs;

    const-string v1, "Featured"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/zs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/zq;->bsb:Lo/zq;

    .line 21
    new-instance v0, Lo/zt;

    const-string v1, "Live"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/zt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/zq;->bsc:Lo/zq;

    .line 27
    new-instance v0, Lo/zu;

    const-string v1, "Trusted"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/zu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/zq;->bsd:Lo/zq;

    .line 33
    new-instance v0, Lo/zv;

    const-string v1, "Score"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/zv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/zq;->bse:Lo/zq;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lo/zq;

    sget-object v1, Lo/zq;->bsa:Lo/zq;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/zq;->bsb:Lo/zq;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/zq;->bsc:Lo/zq;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/zq;->bsd:Lo/zq;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/zq;->bse:Lo/zq;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lo/zq;->bsg:[Lo/zq;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lo/zq;

    sget-object v1, Lo/zq;->bsa:Lo/zq;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/zq;->bse:Lo/zq;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/zq;->bsb:Lo/zq;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/zq;->bsc:Lo/zq;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/zq;->bsf:[Lo/zq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/zr;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lo/zq;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/zq;
    .locals 1

    .line 7
    const-class v0, Lo/zq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/zq;

    return-object v0
.end method

.method public static values()[Lo/zq;
    .locals 1

    .line 7
    sget-object v0, Lo/zq;->bsg:[Lo/zq;

    invoke-virtual {v0}, [Lo/zq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/zq;

    return-object v0
.end method
