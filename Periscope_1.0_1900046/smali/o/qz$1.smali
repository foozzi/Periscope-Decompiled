.class synthetic Lo/qz$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic WR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 580
    invoke-static {}, Lo/qz$ˎ;->values()[Lo/qz$ˎ;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/qz$1;->WR:[I

    :try_start_0
    sget-object v0, Lo/qz$1;->WR:[I

    sget-object v1, Lo/qz$ˎ;->WY:Lo/qz$ˎ;

    invoke-virtual {v1}, Lo/qz$ˎ;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_1
    sget-object v0, Lo/qz$1;->WR:[I

    sget-object v1, Lo/qz$ˎ;->WZ:Lo/qz$ˎ;

    invoke-virtual {v1}, Lo/qz$ˎ;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    return-void
.end method