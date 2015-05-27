.class public abstract enum Lo/gg;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/gg;>;"
    }
.end annotation


# static fields
.field private static final synthetic KA:[Lo/gg;

.field public static final enum Ky:Lo/gg;

.field public static final enum Kz:Lo/gg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lo/gh;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/gh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/gg;->Ky:Lo/gg;

    .line 45
    new-instance v0, Lo/gi;

    const-string v1, "STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/gi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/gg;->Kz:Lo/gg;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lo/gg;

    sget-object v1, Lo/gg;->Ky:Lo/gg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/gg;->Kz:Lo/gg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/gg;->KA:[Lo/gg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/gh;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/gg;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/gg;
    .locals 1

    .line 27
    const-class v0, Lo/gg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/gg;

    return-object v0
.end method

.method public static values()[Lo/gg;
    .locals 1

    .line 27
    sget-object v0, Lo/gg;->KA:[Lo/gg;

    invoke-virtual {v0}, [Lo/gg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/gg;

    return-object v0
.end method
