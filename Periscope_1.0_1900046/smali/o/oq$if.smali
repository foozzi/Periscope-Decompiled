.class public final enum Lo/oq$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/oq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/oq$if;>;"
    }
.end annotation


# static fields
.field public static final enum TD:Lo/oq$if;

.field public static final enum TE:Lo/oq$if;

.field private static final synthetic TG:[Lo/oq$if;


# instance fields
.field public final TF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lo/oq$if;

    const-string v1, "MILES"

    const-string v2, "mi"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lo/oq$if;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/oq$if;->TD:Lo/oq$if;

    .line 18
    new-instance v0, Lo/oq$if;

    const-string v1, "KILOMETERS"

    const-string v2, "km"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lo/oq$if;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/oq$if;->TE:Lo/oq$if;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lo/oq$if;

    sget-object v1, Lo/oq$if;->TD:Lo/oq$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/oq$if;->TE:Lo/oq$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/oq$if;->TG:[Lo/oq$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lo/oq$if;->TF:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/oq$if;
    .locals 1

    .line 16
    const-class v0, Lo/oq$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/oq$if;

    return-object v0
.end method

.method public static values()[Lo/oq$if;
    .locals 1

    .line 16
    sget-object v0, Lo/oq$if;->TG:[Lo/oq$if;

    invoke-virtual {v0}, [Lo/oq$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/oq$if;

    return-object v0
.end method
