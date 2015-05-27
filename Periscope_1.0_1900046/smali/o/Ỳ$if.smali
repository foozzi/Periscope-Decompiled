.class Lo/Ỳ$if;
.super Lo/Ỳ$ˎ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ỳ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private final xA:Lo/ন;

.field final synthetic xB:Lo/Ỳ;


# direct methods
.method public constructor <init>(Lo/Ỳ;)V
    .locals 2

    .line 232
    iput-object p1, p0, Lo/Ỳ$if;->xB:Lo/Ỳ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Ỳ$ˎ;-><init>(Lo/Ỳ$1;)V

    .line 233
    new-instance v0, Lo/ন;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/ন;-><init>([B)V

    iput-object v0, p0, Lo/Ỳ$if;->xA:Lo/ন;

    .line 234
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;ZLo/ᒬ;)V
    .locals 7

    .line 245
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p1}, Lo/প;->readUnsignedByte()I

    move-result v3

    .line 247
    invoke-virtual {p1, v3}, Lo/প;->ʰ(I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lo/Ỳ$if;->xA:Lo/ন;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lo/প;->ˋ(Lo/ন;I)V

    .line 251
    iget-object v0, p0, Lo/Ỳ$if;->xA:Lo/ন;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 252
    iget-object v0, p0, Lo/Ỳ$if;->xA:Lo/ন;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v3

    .line 255
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lo/প;->ʰ(I)V

    .line 257
    add-int/lit8 v0, v3, -0x9

    div-int/lit8 v4, v0, 0x4

    .line 258
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 259
    iget-object v0, p0, Lo/Ỳ$if;->xA:Lo/ন;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lo/প;->ˋ(Lo/ন;I)V

    .line 260
    iget-object v0, p0, Lo/Ỳ$if;->xA:Lo/ন;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 261
    iget-object v0, p0, Lo/Ỳ$if;->xA:Lo/ন;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v6

    .line 262
    iget-object v0, p0, Lo/Ỳ$if;->xB:Lo/Ỳ;

    iget-object v0, v0, Lo/Ỳ;->xv:Landroid/util/SparseArray;

    new-instance v1, Lo/Ỳ$ˋ;

    iget-object v2, p0, Lo/Ỳ$if;->xB:Lo/Ỳ;

    invoke-direct {v1, v2}, Lo/Ỳ$ˋ;-><init>(Lo/Ỳ;)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 266
    :cond_1
    return-void
.end method

.method public ᒮ()V
    .locals 0

    .line 239
    return-void
.end method
