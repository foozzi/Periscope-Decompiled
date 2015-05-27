.class public final enum Lo/sm;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/sm;>;"
    }
.end annotation


# static fields
.field public static final enum XO:Lo/sm;

.field public static final enum XP:Lo/sm;

.field public static final enum XQ:Lo/sm;

.field public static final enum XR:Lo/sm;

.field private static final synthetic XS:[Lo/sm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lo/sm;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/sm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sm;->XO:Lo/sm;

    .line 5
    new-instance v0, Lo/sm;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/sm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sm;->XP:Lo/sm;

    .line 6
    new-instance v0, Lo/sm;

    const-string v1, "PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/sm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sm;->XQ:Lo/sm;

    .line 7
    new-instance v0, Lo/sm;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/sm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sm;->XR:Lo/sm;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lo/sm;

    sget-object v1, Lo/sm;->XO:Lo/sm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/sm;->XP:Lo/sm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/sm;->XQ:Lo/sm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/sm;->XR:Lo/sm;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/sm;->XS:[Lo/sm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/sm;
    .locals 1

    .line 3
    const-class v0, Lo/sm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/sm;

    return-object v0
.end method

.method public static values()[Lo/sm;
    .locals 1

    .line 3
    sget-object v0, Lo/sm;->XS:[Lo/sm;

    invoke-virtual {v0}, [Lo/sm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/sm;

    return-object v0
.end method
