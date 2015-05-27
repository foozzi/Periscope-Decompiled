.class Lo/ﻠ$if;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻠ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field dV:Landroid/content/Context;

.field eD:Lo/ი;

.field fw:[B

.field fy:Lo/ᵨ$if;

.field kM:Lo/ⅹ;

.field kN:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field kO:I

.field kP:I

.field kQ:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lo/ⅹ;[BLandroid/content/Context;Lo/ﺭ;IILo/ᵨ$if;Lo/ი;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u2179;[BLandroid/content/Context;Lo/\ufead<Landroid/graphics/Bitmap;>;IILo/\u1d68$if;Lo/\u10d8;Landroid/graphics/Bitmap;)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 325
    if-nez p9, :cond_0

    .line 326
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iput-object p1, p0, Lo/ﻠ$if;->kM:Lo/ⅹ;

    .line 329
    iput-object p2, p0, Lo/ﻠ$if;->fw:[B

    .line 330
    iput-object p8, p0, Lo/ﻠ$if;->eD:Lo/ი;

    .line 331
    iput-object p9, p0, Lo/ﻠ$if;->kQ:Landroid/graphics/Bitmap;

    .line 332
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ﻠ$if;->dV:Landroid/content/Context;

    .line 333
    iput-object p4, p0, Lo/ﻠ$if;->kN:Lo/ﺭ;

    .line 334
    iput p5, p0, Lo/ﻠ$if;->kO:I

    .line 335
    iput p6, p0, Lo/ﻠ$if;->kP:I

    .line 336
    iput-object p7, p0, Lo/ﻠ$if;->fy:Lo/ᵨ$if;

    .line 337
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 360
    new-instance v0, Lo/ﻠ;

    invoke-direct {v0, p0}, Lo/ﻠ;-><init>(Lo/ﻠ$if;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lo/ﻠ$if;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
