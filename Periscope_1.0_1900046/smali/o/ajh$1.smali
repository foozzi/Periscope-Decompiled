.class synthetic Lo/ajh$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ajh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic bsG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    invoke-static {}, Lo/aah;->values()[Lo/aah;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/ajh$1;->bsG:[I

    :try_start_0
    sget-object v0, Lo/ajh$1;->bsG:[I

    sget-object v1, Lo/aah;->bsL:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

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
    sget-object v0, Lo/ajh$1;->bsG:[I

    sget-object v1, Lo/aah;->bsM:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    :try_start_2
    sget-object v0, Lo/ajh$1;->bsG:[I

    sget-object v1, Lo/aah;->bsN:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v0, Lo/ajh$1;->bsG:[I

    sget-object v1, Lo/aah;->bsO:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v0, Lo/ajh$1;->bsG:[I

    sget-object v1, Lo/aah;->bsP:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v0, Lo/ajh$1;->bsG:[I

    sget-object v1, Lo/aah;->bsQ:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    return-void
.end method
