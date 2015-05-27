.class public Lo/adz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adz$1;
    }
.end annotation


# instance fields
.field private final brN:Lo/vn;

.field private final byV:Lo/amw;

.field private bzA:Z

.field private final bzx:Lo/alg;

.field private final bzy:Lo/agd;

.field private final bzz:Lo/afo;

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lo/vn;Lo/alg;Lo/amw;Lo/agd;Lo/afo;)V
    .locals 8

    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lo/adz;-><init>(Landroid/app/Activity;Lo/vn;Lo/alg;Lo/amw;Lo/agd;Lo/afo;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lo/vn;Lo/alg;Lo/amw;Lo/agd;Lo/afo;Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lo/adz;->brN:Lo/vn;

    .line 52
    iput-object p3, p0, Lo/adz;->bzx:Lo/alg;

    .line 53
    iput-object p4, p0, Lo/adz;->byV:Lo/amw;

    .line 54
    iput-object p5, p0, Lo/adz;->bzy:Lo/agd;

    .line 55
    iput-object p6, p0, Lo/adz;->bzz:Lo/afo;

    .line 56
    iput-boolean p7, p0, Lo/adz;->bzA:Z

    .line 57
    return-void
.end method

.method private xe()V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/adz;->bzx:Lo/alg;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lo/adz;->bzx:Lo/alg;

    invoke-interface {v0}, Lo/alg;->xe()V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic ˊ(Lo/adz;)Lo/vn;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/adz;->brN:Lo/vn;

    return-object v0
.end method

.method static synthetic ˋ(Lo/adz;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/adz;->xe()V

    return-void
.end method


# virtual methods
.method public onEventMainThread(Lo/aai;)V
    .locals 3

    .line 194
    sget-object v0, Lo/adz$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 196
    :pswitch_0
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lo/vi$if;->bmt:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 198
    iget-object v0, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0600df

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lo/vi$if;->bmv:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 201
    iget-object v0, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0600de

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    goto :goto_0

    .line 206
    :pswitch_1
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060074

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v0, p0, Lo/adz;->brN:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tX()Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060073

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    goto :goto_0

    .line 215
    :pswitch_2
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0600d9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0600d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public xr()V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/adz;->bzz:Lo/afo;

    invoke-interface {v0}, Lo/afo;->xr()V

    .line 76
    invoke-direct {p0}, Lo/adz;->xe()V

    .line 77
    return-void
.end method

.method public xs()V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/adz;->bzz:Lo/afo;

    invoke-interface {v0}, Lo/afo;->xs()V

    .line 82
    invoke-direct {p0}, Lo/adz;->xe()V

    .line 83
    return-void
.end method

.method public xt()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lo/adz;->bzz:Lo/afo;

    invoke-interface {v0}, Lo/afo;->xt()Z

    move-result v0

    return v0
.end method

.method public xu()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lo/adz;->bzA:Z

    return v0
.end method

.method public xv()Z
    .locals 3

    .line 176
    new-instance v0, Lo/acz;

    iget-object v1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lo/acz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/acz;->wS()Lo/acy;

    move-result-object v2

    .line 177
    iget-boolean v0, v2, Lo/acy;->byl:Z

    return v0
.end method

.method public ƚ(Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lo/adz;->byV:Lo/amw;

    invoke-interface {v0, p1}, Lo/amw;->ƚ(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public ǐ(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lo/adz;->bzy:Lo/agd;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lo/adz;->bzy:Lo/agd;

    invoke-interface {v0, p1}, Lo/agd;->ǐ(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-direct {p0}, Lo/adz;->xe()V

    .line 65
    return-void
.end method

.method public Ȋ(Ljava/lang/String;)V
    .locals 3

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lo/aec;

    invoke-direct {v1, p0}, Lo/aec;-><init>(Lo/adz;)V

    const v2, 0x7f0600db

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lo/aeb;

    invoke-direct {v1, p0, p1}, Lo/aeb;-><init>(Lo/adz;Ljava/lang/String;)V

    const v2, 0x7f0600dc

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lo/aea;

    invoke-direct {v1, p0}, Lo/aea;-><init>(Lo/adz;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 116
    return-void
.end method

.method public ʅ(Ljava/lang/String;)V
    .locals 3

    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060072

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lo/aed;

    invoke-direct {v1, p0, p1}, Lo/aed;-><init>(Lo/adz;Ljava/lang/String;)V

    const v2, 0x7f060071

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 132
    return-void
.end method

.method public ί(Ljava/lang/String;)V
    .locals 3

    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0600d7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lo/aee;

    invoke-direct {v1, p0, p1}, Lo/aee;-><init>(Lo/adz;Ljava/lang/String;)V

    const v2, 0x7f0600d6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    return-void
.end method

.method public ד(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 153
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 154
    new-instance v4, Ljava/io/File;

    const-string v0, "Periscope"

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 158
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public י(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<+Lo/ale;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lo/adz;->bzx:Lo/alg;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lo/adz;->bzx:Lo/alg;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lo/alg;->ˋ(Ljava/lang/String;Ljava/util/List;)V

    .line 190
    :cond_0
    return-void
.end method

.method public ױ(Ljava/lang/String;)V
    .locals 4

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/adz;->bzA:Z

    .line 164
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/adz;->ד(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 165
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "video/mp4"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 166
    iget-object v0, p0, Lo/adz;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 167
    return-void
.end method
