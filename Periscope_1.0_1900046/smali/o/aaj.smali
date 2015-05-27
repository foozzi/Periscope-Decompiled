.class public final enum Lo/aaj;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/aaj;>;"
    }
.end annotation


# static fields
.field public static final enum btK:Lo/aaj;

.field public static final enum btL:Lo/aaj;

.field public static final enum btM:Lo/aaj;

.field private static final synthetic btN:[Lo/aaj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lo/aaj;

    const-string v1, "OnNormalLogout"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/aaj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aaj;->btK:Lo/aaj;

    .line 5
    new-instance v0, Lo/aaj;

    const-string v1, "OnUnauthorizedLogout"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/aaj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aaj;->btL:Lo/aaj;

    .line 6
    new-instance v0, Lo/aaj;

    const-string v1, "OnBannedUserLogout"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/aaj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aaj;->btM:Lo/aaj;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lo/aaj;

    sget-object v1, Lo/aaj;->btK:Lo/aaj;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/aaj;->btL:Lo/aaj;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/aaj;->btM:Lo/aaj;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/aaj;->btN:[Lo/aaj;

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

.method public static valueOf(Ljava/lang/String;)Lo/aaj;
    .locals 1

    .line 3
    const-class v0, Lo/aaj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/aaj;

    return-object v0
.end method

.method public static values()[Lo/aaj;
    .locals 1

    .line 3
    sget-object v0, Lo/aaj;->btN:[Lo/aaj;

    invoke-virtual {v0}, [Lo/aaj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/aaj;

    return-object v0
.end method
