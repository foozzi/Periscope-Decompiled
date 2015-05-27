.class public final enum Lo/acf;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/acf;>;"
    }
.end annotation


# static fields
.field public static final enum bxw:Lo/acf;

.field private static final synthetic bxx:[Lo/acf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lo/acf;

    const-string v1, "FetchMore"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/acf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/acf;->bxw:Lo/acf;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lo/acf;

    sget-object v1, Lo/acf;->bxw:Lo/acf;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/acf;->bxx:[Lo/acf;

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

.method public static valueOf(Ljava/lang/String;)Lo/acf;
    .locals 1

    .line 3
    const-class v0, Lo/acf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/acf;

    return-object v0
.end method

.method public static values()[Lo/acf;
    .locals 1

    .line 3
    sget-object v0, Lo/acf;->bxx:[Lo/acf;

    invoke-virtual {v0}, [Lo/acf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/acf;

    return-object v0
.end method
