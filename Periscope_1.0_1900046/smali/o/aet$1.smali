.class synthetic Lo/aet$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic bBX:[I

.field static final synthetic bnK:[I

.field static final synthetic brV:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1025
    invoke-static {}, Lo/akq$if;->values()[Lo/akq$if;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/aet$1;->bBX:[I

    :try_start_0
    sget-object v0, Lo/aet$1;->bBX:[I

    sget-object v1, Lo/akq$if;->bJQ:Lo/akq$if;

    invoke-virtual {v1}, Lo/akq$if;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 765
    :goto_0
    invoke-static {}, Lo/aai$if;->values()[Lo/aai$if;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/aet$1;->bnK:[I

    :try_start_1
    sget-object v0, Lo/aet$1;->bnK:[I

    sget-object v1, Lo/aai$if;->bts:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    :try_start_2
    sget-object v0, Lo/aet$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btt:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v0, Lo/aet$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btg:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v0, Lo/aet$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btn:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v0, Lo/aet$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btI:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v0, Lo/aet$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btC:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    :goto_6
    :try_start_7
    sget-object v0, Lo/aet$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btB:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    .line 745
    :goto_7
    invoke-static {}, Lo/aak;->values()[Lo/aak;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/aet$1;->brV:[I

    :try_start_8
    sget-object v0, Lo/aet$1;->brV:[I

    sget-object v1, Lo/aak;->btY:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    :goto_8
    return-void
.end method
