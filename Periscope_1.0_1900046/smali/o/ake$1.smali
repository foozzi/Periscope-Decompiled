.class synthetic Lo/ake$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic bnK:[I

.field static final synthetic brV:[I

.field static final synthetic bsG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 152
    invoke-static {}, Lo/aai$if;->values()[Lo/aai$if;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/ake$1;->bnK:[I

    :try_start_0
    sget-object v0, Lo/ake$1;->bnK:[I

    sget-object v1, Lo/aai$if;->bte:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

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
    sget-object v0, Lo/ake$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btf:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

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
    sget-object v0, Lo/ake$1;->bnK:[I

    sget-object v1, Lo/aai$if;->btb:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 136
    :goto_2
    invoke-static {}, Lo/aak;->values()[Lo/aak;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/ake$1;->brV:[I

    :try_start_3
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->btT:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->btO:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->btP:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->btS:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    :goto_6
    :try_start_7
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->btR:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->bub:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    :goto_8
    :try_start_9
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->buc:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    :goto_9
    :try_start_a
    sget-object v0, Lo/ake$1;->brV:[I

    sget-object v1, Lo/aak;->bud:Lo/aak;

    invoke-virtual {v1}, Lo/aak;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v3

    .line 81
    :goto_a
    invoke-static {}, Lo/aah;->values()[Lo/aah;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/ake$1;->bsG:[I

    :try_start_b
    sget-object v0, Lo/ake$1;->bsG:[I

    sget-object v1, Lo/aah;->bsP:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v3

    :goto_b
    :try_start_c
    sget-object v0, Lo/ake$1;->bsG:[I

    sget-object v1, Lo/aah;->bsQ:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v3

    :goto_c
    :try_start_d
    sget-object v0, Lo/ake$1;->bsG:[I

    sget-object v1, Lo/aah;->bsO:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v3

    :goto_d
    :try_start_e
    sget-object v0, Lo/ake$1;->bsG:[I

    sget-object v1, Lo/aah;->bsL:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v3

    :goto_e
    :try_start_f
    sget-object v0, Lo/ake$1;->bsG:[I

    sget-object v1, Lo/aah;->bsM:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v3

    :goto_f
    :try_start_10
    sget-object v0, Lo/ake$1;->bsG:[I

    sget-object v1, Lo/aah;->bsN:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v3

    :goto_10
    return-void
.end method
