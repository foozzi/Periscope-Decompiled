.class synthetic Lo/akw$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic bKI:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 226
    invoke-static {}, Lo/akw$ˊ;->values()[Lo/akw$ˊ;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/akw$1;->bKI:[I

    :try_start_0
    sget-object v0, Lo/akw$1;->bKI:[I

    sget-object v1, Lo/akw$ˊ;->bKK:Lo/akw$ˊ;

    invoke-virtual {v1}, Lo/akw$ˊ;->ordinal()I

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
    sget-object v0, Lo/akw$1;->bKI:[I

    sget-object v1, Lo/akw$ˊ;->bKL:Lo/akw$ˊ;

    invoke-virtual {v1}, Lo/akw$ˊ;->ordinal()I

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
    sget-object v0, Lo/akw$1;->bKI:[I

    sget-object v1, Lo/akw$ˊ;->bKM:Lo/akw$ˊ;

    invoke-virtual {v1}, Lo/akw$ˊ;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    return-void
.end method
