.class public final enum Lo/ﭝ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/\ufb5d;>;"
    }
.end annotation


# static fields
.field public static final enum gP:Lo/ﭝ;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum gQ:Lo/ﭝ;

.field public static final enum gR:Lo/ﭝ;

.field public static final gS:Lo/ﭝ;

.field private static final synthetic gT:[Lo/ﭝ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lo/ﭝ;

    const-string v1, "ALWAYS_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ﭝ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ﭝ;->gP:Lo/ﭝ;

    .line 36
    new-instance v0, Lo/ﭝ;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ﭝ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ﭝ;->gQ:Lo/ﭝ;

    .line 45
    new-instance v0, Lo/ﭝ;

    const-string v1, "PREFER_RGB_565"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/ﭝ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ﭝ;->gR:Lo/ﭝ;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lo/ﭝ;

    sget-object v1, Lo/ﭝ;->gP:Lo/ﭝ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/ﭝ;->gQ:Lo/ﭝ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/ﭝ;->gR:Lo/ﭝ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/ﭝ;->gT:[Lo/ﭝ;

    .line 48
    sget-object v0, Lo/ﭝ;->gR:Lo/ﭝ;

    sput-object v0, Lo/ﭝ;->gS:Lo/ﭝ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ﭝ;
    .locals 1

    .line 14
    const-class v0, Lo/ﭝ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/ﭝ;

    return-object v0
.end method

.method public static values()[Lo/ﭝ;
    .locals 1

    .line 14
    sget-object v0, Lo/ﭝ;->gT:[Lo/ﭝ;

    invoke-virtual {v0}, [Lo/ﭝ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ﭝ;

    return-object v0
.end method
