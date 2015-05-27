.class public final enum Lo/alm$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/alm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/alm$if;>;"
    }
.end annotation


# static fields
.field public static final enum bLX:Lo/alm$if;

.field public static final enum bLY:Lo/alm$if;

.field public static final enum bLZ:Lo/alm$if;

.field public static final bMa:[Lo/alm$if;

.field private static final synthetic bMb:[Lo/alm$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 176
    new-instance v0, Lo/alm$if;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/alm$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/alm$if;->bLX:Lo/alm$if;

    new-instance v0, Lo/alm$if;

    const-string v1, "Oval"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/alm$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/alm$if;->bLY:Lo/alm$if;

    new-instance v0, Lo/alm$if;

    const-string v1, "RoundRect"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/alm$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/alm$if;->bLZ:Lo/alm$if;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lo/alm$if;

    sget-object v1, Lo/alm$if;->bLX:Lo/alm$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/alm$if;->bLY:Lo/alm$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/alm$if;->bLZ:Lo/alm$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/alm$if;->bMb:[Lo/alm$if;

    .line 178
    invoke-static {}, Lo/alm$if;->values()[Lo/alm$if;

    move-result-object v0

    sput-object v0, Lo/alm$if;->bMa:[Lo/alm$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/alm$if;
    .locals 1

    .line 175
    const-class v0, Lo/alm$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/alm$if;

    return-object v0
.end method

.method public static values()[Lo/alm$if;
    .locals 1

    .line 175
    sget-object v0, Lo/alm$if;->bMb:[Lo/alm$if;

    invoke-virtual {v0}, [Lo/alm$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/alm$if;

    return-object v0
.end method
