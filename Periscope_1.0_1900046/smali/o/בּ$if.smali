.class Lo/בּ$if;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/בּ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final mP:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mQ:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
    .locals 0

    .line 217
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 218
    iput-object p1, p0, Lo/בּ$if;->mP:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 219
    iput p2, p0, Lo/בּ$if;->mQ:I

    .line 220
    return-void
.end method

.method constructor <init>(Lo/בּ$if;)V
    .locals 2

    .line 214
    iget-object v0, p1, Lo/בּ$if;->mP:Landroid/graphics/drawable/Drawable$ConstantState;

    iget v1, p1, Lo/בּ$if;->mQ:I

    invoke-direct {p0, v0, v1}, Lo/בּ$if;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    .line 215
    return-void
.end method

.method static synthetic ˊ(Lo/בּ$if;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 209
    iget-object v0, p0, Lo/בּ$if;->mP:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0
.end method

.method static synthetic ˋ(Lo/בּ$if;)I
    .locals 1

    .line 209
    iget v0, p0, Lo/בּ$if;->mQ:I

    return v0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/בּ$if;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 229
    new-instance v0, Lo/בּ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lo/בּ;-><init>(Lo/בּ$if;Lo/לּ;Landroid/content/res/Resources;)V

    return-object v0
.end method
