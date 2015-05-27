.class public Lo/akn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/akn$if;
    }
.end annotation


# static fields
.field private static final Wa:Ljava/lang/String;

.field static final bIA:Ljava/util/regex/Pattern;

.field private static final bIu:Lo/fl;

.field private static final bIv:Lo/akn$if;

.field private static bIw:Landroid/renderscript/RenderScript;

.field private static final bIx:Ljava/util/Random;

.field private static final bIy:Ljava/text/DecimalFormat;

.field private static final bIz:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/fl;

    invoke-direct {v0}, Lo/fl;-><init>()V

    sput-object v0, Lo/akn;->bIu:Lo/fl;

    .line 41
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/akn;->Wa:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    .line 61
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    sput-object v0, Lo/akn;->bIz:Ljava/text/DecimalFormatSymbols;

    .line 65
    new-instance v0, Lo/akn$if;

    invoke-direct {v0}, Lo/akn$if;-><init>()V

    sput-object v0, Lo/akn;->bIv:Lo/akn$if;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lo/akn;->bIx:Ljava/util/Random;

    .line 223
    const-string v0, "(\\*(\\d+)\\$(.+?)\\*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/akn;->bIA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method public static AA()Ljava/util/Random;
    .locals 1

    .line 70
    sget-object v0, Lo/akn;->bIx:Ljava/util/Random;

    return-object v0
.end method

.method public static AB()Ljava/math/BigInteger;
    .locals 4

    .line 290
    invoke-static {}, Lo/akx;->Bl()Lo/akx;

    move-result-object v0

    invoke-virtual {v0}, Lo/akx;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide v2, 0x83aa7e80L

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static bS()Lo/fl;
    .locals 1

    .line 140
    sget-object v0, Lo/akn;->bIu:Lo/fl;

    return-object v0
.end method

.method public static cD()Ljava/lang/String;
    .locals 5

    .line 131
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3}, Lo/akn;->ᒾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lo/akn;->ᒾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs ˊ(Ljava/lang/String;I[Landroid/view/View$OnClickListener;)Landroid/text/SpannableStringBuilder;
    .locals 15

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v5, p2

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 236
    sget-object v0, Lo/akn;->bIA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 237
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v10

    .line 239
    const/4 v0, 0x3

    if-eq v10, v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String not properly formatted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    .line 243
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    .line 244
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v13, v0, -0x1

    .line 245
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 247
    invoke-virtual {v3, v11, v12, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4, v11, v12, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    new-instance v0, Lo/ako;

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lo/ako;-><init>(I[Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v11

    const/16 v2, 0x21

    invoke-virtual {v4, v0, v11, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 235
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 259
    :cond_2
    return-object v4
.end method

.method public static ˊ(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 152
    sub-long v5, v3, p1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 155
    const-wide/16 v0, 0x1388

    cmp-long v0, v5, v0

    if-gtz v0, :cond_0

    .line 156
    const v0, 0x7f0600bd

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    const-wide/32 v0, 0xea60

    cmp-long v0, v5, v0

    if-gez v0, :cond_1

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    div-long v1, v5, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0600e2

    invoke-virtual {v7, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/32 v1, 0xea60

    div-long v1, v5, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0600a0

    invoke-virtual {v7, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_2
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/32 v1, 0x36ee80

    div-long v1, v5, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f060096

    invoke-virtual {v7, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_3
    const-wide/32 v0, 0x240c8400

    cmp-long v0, v5, v0

    if-gez v0, :cond_4

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/32 v1, 0x5265c00

    div-long v1, v5, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f06006f

    invoke-virtual {v7, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_4
    const-wide v0, 0x9ca41900L

    cmp-long v0, v5, v0

    if-gez v0, :cond_5

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/32 v1, 0x240c8400

    div-long v1, v5, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f06010b

    invoke-virtual {v7, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_5
    const-wide v0, 0x757b12c00L

    cmp-long v0, v5, v0

    if-gez v0, :cond_6

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide v1, 0x9ca41900L

    div-long v1, v5, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0600a1

    invoke-virtual {v7, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide v1, 0x757b12c00L

    div-long v1, v5, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f06010c

    invoke-virtual {v7, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;
    .locals 11

    .line 315
    const v0, 0x7f0600c4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 318
    :goto_0
    const v0, 0x7f0600c1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 320
    :goto_1
    const/4 v8, 0x3

    .line 322
    const v0, 0x7f0600c0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v8, v0

    .line 326
    goto :goto_2

    .line 324
    :catch_0
    move-exception v9

    .line 327
    :goto_2
    sget-object v0, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v8}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 328
    sget-object v0, Lo/akn;->bIz:Ljava/text/DecimalFormatSymbols;

    const v1, 0x7f0600c3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 330
    sget-object v0, Lo/akn;->bIz:Ljava/text/DecimalFormatSymbols;

    const v1, 0x7f0600bf

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 333
    sget-object v0, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 334
    sget-object v0, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    sget-object v1, Lo/akn;->bIz:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 337
    if-eqz p3, :cond_2

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    :cond_2
    sget-object v0, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_3
    long-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    move-wide v9, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    .line 343
    if-eqz v7, :cond_4

    .line 344
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v0

    .line 346
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0600c2

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 348
    :cond_5
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    move-wide v9, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_7

    .line 349
    if-eqz v6, :cond_6

    .line 350
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double/2addr v9, v0

    .line 352
    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0600c5

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_7
    sget-object v0, Lo/akn;->bIy:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs ˊ(Landroid/widget/TextView;Ljava/lang/String;I[Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 226
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 227
    invoke-static {p1, p2, p3}, Lo/akn;->ˊ(Ljava/lang/String;I[Landroid/view/View$OnClickListener;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method public static ˊ(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 3

    .line 193
    sget-object v0, Lo/akn;->bIv:Lo/akn$if;

    sget-object v1, Lo/akn;->bIv:Lo/akn$if;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lo/akn$if;->ˊ(Landroid/os/Message;J)V

    .line 194
    return-void
.end method

.method public static ו(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lo/akn;->ۦ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lo/akn;->เ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ۦ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static เ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Ꭵ(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v3

    .line 99
    const-string v0, "unknown"

    return-object v0
.end method

.method public static ᐤ(Landroid/content/Context;)I
    .locals 4

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 110
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 111
    :catch_0
    move-exception v3

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ᒡ(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 1

    .line 144
    sget-object v0, Lo/akn;->bIw:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 145
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lo/akn;->bIw:Landroid/renderscript/RenderScript;

    .line 147
    :cond_0
    sget-object v0, Lo/akn;->bIw:Landroid/renderscript/RenderScript;

    return-object v0
.end method

.method public static ᒢ(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4

    .line 181
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v1, v0

    .line 182
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 183
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 184
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 185
    return-object v3
.end method

.method private static ᒾ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 136
    sget-object v0, Lo/akn;->Wa:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᔥ(Ljava/lang/String;)J
    .locals 3

    .line 175
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 176
    invoke-virtual {v2, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 177
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ᖦ(Ljava/lang/String;)V
    .locals 2

    .line 197
    sget-object v0, Lo/akn;->bIv:Lo/akn$if;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/akn$if;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lo/akn;->bIv:Lo/akn$if;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/akn$if;->removeMessages(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public static ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    .line 203
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 204
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 205
    return-object p0

    .line 207
    :cond_0
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x2a

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 208
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 209
    return-object p0

    .line 211
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 212
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 214
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v4, p0, v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 215
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 217
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, p0, v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 218
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x12

    invoke-virtual {v4, v0, v5, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    return-object v4
.end method

.method public static ⁱ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 294
    if-eqz p0, :cond_0

    .line 295
    const-wide v0, 0x100000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method
