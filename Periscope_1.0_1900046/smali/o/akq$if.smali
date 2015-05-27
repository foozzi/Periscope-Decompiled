.class public final enum Lo/akq$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/akq$if;>;"
    }
.end annotation


# static fields
.field public static final enum bJP:Lo/akq$if;

.field public static final enum bJQ:Lo/akq$if;

.field public static final enum bJR:Lo/akq$if;

.field public static final enum bJS:Lo/akq$if;

.field private static final synthetic bJT:[Lo/akq$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lo/akq$if;

    const-string v1, "PS_Connecting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/akq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/akq$if;->bJP:Lo/akq$if;

    .line 78
    new-instance v0, Lo/akq$if;

    const-string v1, "PS_Publishing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/akq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/akq$if;->bJQ:Lo/akq$if;

    .line 79
    new-instance v0, Lo/akq$if;

    const-string v1, "PS_Reconnecting"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/akq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/akq$if;->bJR:Lo/akq$if;

    .line 80
    new-instance v0, Lo/akq$if;

    const-string v1, "PS_Ended"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/akq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/akq$if;->bJS:Lo/akq$if;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lo/akq$if;

    sget-object v1, Lo/akq$if;->bJP:Lo/akq$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/akq$if;->bJQ:Lo/akq$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/akq$if;->bJR:Lo/akq$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/akq$if;->bJS:Lo/akq$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/akq$if;->bJT:[Lo/akq$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/akq$if;
    .locals 1

    .line 75
    const-class v0, Lo/akq$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/akq$if;

    return-object v0
.end method

.method public static values()[Lo/akq$if;
    .locals 1

    .line 75
    sget-object v0, Lo/akq$if;->bJT:[Lo/akq$if;

    invoke-virtual {v0}, [Lo/akq$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/akq$if;

    return-object v0
.end method
