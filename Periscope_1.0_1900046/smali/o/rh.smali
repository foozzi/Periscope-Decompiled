.class public final enum Lo/rh;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/rh;>;"
    }
.end annotation


# static fields
.field public static final enum Xe:Lo/rh;

.field public static final enum Xf:Lo/rh;

.field public static final enum Xg:Lo/rh;

.field public static final enum Xh:Lo/rh;

.field private static final synthetic Xi:[Lo/rh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lo/rh;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/rh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/rh;->Xe:Lo/rh;

    .line 8
    new-instance v0, Lo/rh;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/rh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/rh;->Xf:Lo/rh;

    .line 9
    new-instance v0, Lo/rh;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/rh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/rh;->Xg:Lo/rh;

    .line 10
    new-instance v0, Lo/rh;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/rh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/rh;->Xh:Lo/rh;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lo/rh;

    sget-object v1, Lo/rh;->Xe:Lo/rh;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/rh;->Xf:Lo/rh;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/rh;->Xg:Lo/rh;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/rh;->Xh:Lo/rh;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/rh;->Xi:[Lo/rh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/rh;
    .locals 1

    .line 6
    const-class v0, Lo/rh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/rh;

    return-object v0
.end method

.method public static values()[Lo/rh;
    .locals 1

    .line 6
    sget-object v0, Lo/rh;->Xi:[Lo/rh;

    invoke-virtual {v0}, [Lo/rh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/rh;

    return-object v0
.end method

.method static ˊ(Lo/rm;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:Ljava/lang/Object;>(Lo/rm;TY;)I"
        }
    .end annotation

    .line 21
    instance-of v0, p1, Lo/rm;

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p1

    check-cast v0, Lo/rm;

    invoke-interface {v0}, Lo/rm;->є()Lo/rh;

    move-result-object v2

    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Lo/rh;->Xf:Lo/rh;

    .line 27
    :goto_0
    invoke-virtual {v2}, Lo/rh;->ordinal()I

    move-result v0

    invoke-interface {p0}, Lo/rm;->є()Lo/rh;

    move-result-object v1

    invoke-virtual {v1}, Lo/rh;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
