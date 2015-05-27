.class public final Lo/ฯ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ฯ$if;
    }
.end annotation


# static fields
.field private static final ʰ:Landroid/graphics/PorterDuff$Mode;

.field public static final ᴉ:Z

.field private static final ᴘ:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<Landroid/content/Context;Lo/\u0e2f;>;"
        }
    .end annotation
.end field

.field private static final ᴝ:Lo/ฯ$if;

.field private static final ᴦ:[I

.field private static final ᴩ:[I

.field private static final ᴭ:[I

.field private static final Ṭ:[I

.field private static final ṯ:[I


# instance fields
.field private final ẏ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
        }
    .end annotation
.end field

.field private ẓ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
        }
    .end annotation
.end field

.field private ọ:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/ฯ;->ᴉ:Z

    .line 51
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lo/ฯ;->ʰ:Landroid/graphics/PorterDuff$Mode;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lo/ฯ;->ᴘ:Ljava/util/WeakHashMap;

    .line 54
    new-instance v0, Lo/ฯ$if;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lo/ฯ$if;-><init>(I)V

    sput-object v0, Lo/ฯ;->ᴝ:Lo/ฯ$if;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lo/ڊ$ˎ;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_textfield_default_mtrl_alpha:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lo/ฯ;->ᴦ:[I

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Lo/ڊ$ˎ;->abc_ic_ab_back_mtrl_am_alpha:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_go_search_api_mtrl_alpha:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_search_api_mtrl_alpha:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_commit_search_api_mtrl_alpha:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_clear_mtrl_alpha:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_menu_share_mtrl_alpha:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_menu_copy_mtrl_am_alpha:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_menu_selectall_mtrl_alpha:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_menu_paste_mtrl_am_alpha:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ic_voice_search_api_mtrl_alpha:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lo/ฯ;->ᴩ:[I

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lo/ڊ$ˎ;->abc_textfield_activated_mtrl_alpha:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_textfield_search_activated_mtrl_alpha:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_cab_background_top_mtrl_alpha:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_text_cursor_mtrl_alpha:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lo/ฯ;->ᴭ:[I

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lo/ڊ$ˎ;->abc_popup_background_mtrl_mult:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_cab_background_internal_bg:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_menu_hardkey_panel_mtrl_mult:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lo/ฯ;->Ṭ:[I

    .line 110
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Lo/ڊ$ˎ;->abc_edit_text_material:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_tab_indicator_material:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_textfield_search_material:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_spinner_mtrl_am_alpha:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_btn_check_material:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_btn_radio_material:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_spinner_textfield_background_material:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_ratingbar_full_material:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_switch_track_mtrl_alpha:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_switch_thumb_material:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_btn_default_mtrl_shape:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lo/ڊ$ˎ;->abc_btn_borderless_material:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lo/ฯ;->ṯ:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ฯ;->ẏ:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method private static ʲ(I)Z
    .locals 1

    .line 253
    sget-object v0, Lo/ฯ;->ᴩ:[I

    invoke-static {v0, p0}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ฯ;->ᴦ:[I

    invoke-static {v0, p0}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ฯ;->ᴭ:[I

    invoke-static {v0, p0}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ฯ;->ṯ:[I

    invoke-static {v0, p0}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ฯ;->Ṭ:[I

    invoke-static {v0, p0}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lo/ڊ$ˎ;->abc_cab_background_top_material:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ʻ(Landroid/content/Context;)Lo/ฯ;
    .locals 2

    .line 145
    sget-object v0, Lo/ฯ;->ᴘ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ฯ;

    move-object v1, v0

    .line 146
    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lo/ฯ;

    invoke-direct {v1, p0}, Lo/ฯ;-><init>(Landroid/content/Context;)V

    .line 148
    sget-object v0, Lo/ฯ;->ᴘ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    return-object v1
.end method

.method private ʼ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .line 311
    iget-object v0, p0, Lo/ฯ;->ọ:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 317
    sget v0, Lo/ڊ$if;->colorControlNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v1

    .line 318
    sget v0, Lo/ڊ$if;->colorControlActivated:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v2

    .line 321
    const/4 v0, 0x7

    new-array v3, v0, [[I

    .line 322
    const/4 v0, 0x7

    new-array v4, v0, [I

    .line 323
    const/4 v5, 0x0

    .line 326
    sget-object v0, Lo/ڌ;->ᖾ:[I

    aput-object v0, v3, v5

    .line 327
    sget v0, Lo/ڊ$if;->colorControlNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˏ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v4, v5

    .line 328
    add-int/lit8 v5, v5, 0x1

    .line 330
    sget-object v0, Lo/ڌ;->FOCUSED_STATE_SET:[I

    aput-object v0, v3, v5

    .line 331
    aput v2, v4, v5

    .line 332
    add-int/lit8 v5, v5, 0x1

    .line 334
    sget-object v0, Lo/ڌ;->ᖿ:[I

    aput-object v0, v3, v5

    .line 335
    aput v2, v4, v5

    .line 336
    add-int/lit8 v5, v5, 0x1

    .line 338
    sget-object v0, Lo/ڌ;->PRESSED_STATE_SET:[I

    aput-object v0, v3, v5

    .line 339
    aput v2, v4, v5

    .line 340
    add-int/lit8 v5, v5, 0x1

    .line 342
    sget-object v0, Lo/ڌ;->ᗁ:[I

    aput-object v0, v3, v5

    .line 343
    aput v2, v4, v5

    .line 344
    add-int/lit8 v5, v5, 0x1

    .line 346
    sget-object v0, Lo/ڌ;->SELECTED_STATE_SET:[I

    aput-object v0, v3, v5

    .line 347
    aput v2, v4, v5

    .line 348
    add-int/lit8 v5, v5, 0x1

    .line 351
    sget-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    aput-object v0, v3, v5

    .line 352
    aput v1, v4, v5

    .line 353
    add-int/lit8 v5, v5, 0x1

    .line 355
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lo/ฯ;->ọ:Landroid/content/res/ColorStateList;

    .line 357
    :cond_0
    iget-object v0, p0, Lo/ฯ;->ọ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private ʽ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5

    .line 361
    const/4 v0, 0x3

    new-array v2, v0, [[I

    .line 362
    const/4 v0, 0x3

    new-array v3, v0, [I

    .line 363
    const/4 v4, 0x0

    .line 366
    sget-object v0, Lo/ڌ;->ᖾ:[I

    aput-object v0, v2, v4

    .line 367
    const v0, 0x1010030

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0, v1}, Lo/ڌ;->ˊ(Landroid/content/Context;IF)I

    move-result v0

    aput v0, v3, v4

    .line 368
    add-int/lit8 v4, v4, 0x1

    .line 370
    sget-object v0, Lo/ڌ;->ᗁ:[I

    aput-object v0, v2, v4

    .line 371
    sget v0, Lo/ڊ$if;->colorControlActivated:I

    const v1, 0x3e99999a    # 0.3f

    invoke-static {p1, v0, v1}, Lo/ڌ;->ˊ(Landroid/content/Context;IF)I

    move-result v0

    aput v0, v3, v4

    .line 372
    add-int/lit8 v4, v4, 0x1

    .line 375
    sget-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    aput-object v0, v2, v4

    .line 376
    const v0, 0x1010030

    const v1, 0x3e99999a    # 0.3f

    invoke-static {p1, v0, v1}, Lo/ڌ;->ˊ(Landroid/content/Context;IF)I

    move-result v0

    aput v0, v3, v4

    .line 377
    add-int/lit8 v4, v4, 0x1

    .line 379
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private ʾ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .line 451
    const/4 v0, 0x4

    new-array v1, v0, [[I

    .line 452
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 453
    const/4 v3, 0x0

    .line 455
    sget v0, Lo/ڊ$if;->colorButtonNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v4

    .line 456
    sget v0, Lo/ڊ$if;->colorControlHighlight:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v5

    .line 459
    sget-object v0, Lo/ڌ;->ᖾ:[I

    aput-object v0, v1, v3

    .line 460
    sget v0, Lo/ڊ$if;->colorButtonNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˏ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v3

    .line 461
    add-int/lit8 v3, v3, 0x1

    .line 463
    sget-object v0, Lo/ڌ;->PRESSED_STATE_SET:[I

    aput-object v0, v1, v3

    .line 464
    invoke-static {v5, v4}, Lo/ᐡ;->ˊ(II)I

    move-result v0

    aput v0, v2, v3

    .line 465
    add-int/lit8 v3, v3, 0x1

    .line 467
    sget-object v0, Lo/ڌ;->FOCUSED_STATE_SET:[I

    aput-object v0, v1, v3

    .line 468
    invoke-static {v5, v4}, Lo/ᐡ;->ˊ(II)I

    move-result v0

    aput v0, v2, v3

    .line 469
    add-int/lit8 v3, v3, 0x1

    .line 472
    sget-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    aput-object v0, v1, v3

    .line 473
    aput v4, v2, v3

    .line 474
    add-int/lit8 v3, v3, 0x1

    .line 476
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private ʿ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 480
    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 481
    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 482
    const/4 v3, 0x0

    .line 485
    sget-object v0, Lo/ڌ;->ᖾ:[I

    aput-object v0, v1, v3

    .line 486
    sget v0, Lo/ڊ$if;->colorControlNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˏ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v3

    .line 487
    add-int/lit8 v3, v3, 0x1

    .line 489
    sget-object v0, Lo/ڌ;->ᘅ:[I

    aput-object v0, v1, v3

    .line 490
    sget v0, Lo/ڊ$if;->colorControlNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v3

    .line 491
    add-int/lit8 v3, v3, 0x1

    .line 493
    sget-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    aput-object v0, v1, v3

    .line 494
    sget v0, Lo/ڊ$if;->colorControlActivated:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v3

    .line 495
    add-int/lit8 v3, v3, 0x1

    .line 497
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static ˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 134
    invoke-static {p1}, Lo/ฯ;->ʲ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0}, Lo/ฯ;->ʻ(Landroid/content/Context;)Lo/ฯ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    invoke-static {p0, p1}, Lo/ᵣ;->ˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 542
    if-nez p2, :cond_0

    .line 544
    sget-object p2, Lo/ฯ;->ʰ:Landroid/graphics/PorterDuff$Mode;

    .line 548
    :cond_0
    sget-object v0, Lo/ฯ;->ᴝ:Lo/ฯ$if;

    invoke-virtual {v0, p1, p2}, Lo/ฯ$if;->ˊ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 550
    if-nez v1, :cond_1

    .line 552
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 553
    sget-object v0, Lo/ฯ;->ᴝ:Lo/ฯ$if;

    invoke-virtual {v0, p1, p2, v1}, Lo/ฯ$if;->ˊ(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 556
    :cond_1
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 557
    return-void
.end method

.method public static ˊ(Landroid/view/View;Lo/৳;)V
    .locals 4

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 524
    iget-boolean v0, p1, Lo/৳;->ᘧ:Z

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p1, Lo/৳;->Ϊ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p1, Lo/৳;->Ϊ:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-boolean v1, p1, Lo/৳;->ᘦ:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lo/৳;->Ї:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3, v0, v1}, Lo/ฯ;->ˊ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 531
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 534
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 539
    :cond_2
    return-void
.end method

.method private static ˊ([II)Z
    .locals 5

    .line 244
    move-object v1, p0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 245
    if-ne v4, p1, :cond_0

    .line 246
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ͺ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .line 383
    const/4 v0, 0x3

    new-array v2, v0, [[I

    .line 384
    const/4 v0, 0x3

    new-array v3, v0, [I

    .line 385
    const/4 v4, 0x0

    .line 387
    sget v0, Lo/ڊ$if;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 390
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lo/ڌ;->ᖾ:[I

    aput-object v0, v2, v4

    .line 396
    aget-object v0, v2, v4

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    aput v0, v3, v4

    .line 397
    add-int/lit8 v4, v4, 0x1

    .line 399
    sget-object v0, Lo/ڌ;->ᗁ:[I

    aput-object v0, v2, v4

    .line 400
    sget v0, Lo/ڊ$if;->colorControlActivated:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v3, v4

    .line 401
    add-int/lit8 v4, v4, 0x1

    .line 404
    sget-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    aput-object v0, v2, v4

    .line 405
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    aput v0, v3, v4

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 411
    :cond_0
    sget-object v0, Lo/ڌ;->ᖾ:[I

    aput-object v0, v2, v4

    .line 412
    sget v0, Lo/ڊ$if;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˏ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v3, v4

    .line 413
    add-int/lit8 v4, v4, 0x1

    .line 415
    sget-object v0, Lo/ڌ;->ᗁ:[I

    aput-object v0, v2, v4

    .line 416
    sget v0, Lo/ڊ$if;->colorControlActivated:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v3, v4

    .line 417
    add-int/lit8 v4, v4, 0x1

    .line 420
    sget-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    aput-object v0, v2, v4

    .line 421
    sget v0, Lo/ڊ$if;->colorSwitchThumbNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v3, v4

    .line 422
    add-int/lit8 v4, v4, 0x1

    .line 425
    :goto_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private ι(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 429
    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 430
    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 431
    const/4 v3, 0x0

    .line 434
    sget-object v0, Lo/ڌ;->ᖾ:[I

    aput-object v0, v1, v3

    .line 435
    sget v0, Lo/ڊ$if;->colorControlNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˏ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v3

    .line 436
    add-int/lit8 v3, v3, 0x1

    .line 438
    sget-object v0, Lo/ڌ;->ᘅ:[I

    aput-object v0, v1, v3

    .line 439
    sget v0, Lo/ڊ$if;->colorControlNormal:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v3

    .line 440
    add-int/lit8 v3, v3, 0x1

    .line 443
    sget-object v0, Lo/ڌ;->EMPTY_STATE_SET:[I

    aput-object v0, v1, v3

    .line 444
    sget v0, Lo/ڊ$if;->colorControlActivated:I

    invoke-static {p1, v0}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v3

    .line 445
    add-int/lit8 v3, v3, 0x1

    .line 447
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/ฯ;->ι(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final ˊ(ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    .line 202
    iget-object v0, p0, Lo/ฯ;->ẏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    .line 203
    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    const/4 v2, 0x0

    .line 206
    const/4 v3, 0x0

    .line 207
    const/4 v4, 0x0

    .line 208
    const/4 v5, -0x1

    .line 210
    sget-object v0, Lo/ฯ;->ᴦ:[I

    invoke-static {v0, p1}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget v4, Lo/ڊ$if;->colorControlNormal:I

    .line 212
    const/4 v3, 0x1

    goto :goto_0

    .line 213
    :cond_1
    sget-object v0, Lo/ฯ;->ᴭ:[I

    invoke-static {v0, p1}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    sget v4, Lo/ڊ$if;->colorControlActivated:I

    .line 215
    const/4 v3, 0x1

    goto :goto_0

    .line 216
    :cond_2
    sget-object v0, Lo/ฯ;->Ṭ:[I

    invoke-static {v0, p1}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    const v4, 0x1010031

    .line 218
    const/4 v3, 0x1

    .line 219
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 220
    :cond_3
    sget v0, Lo/ڊ$ˎ;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v0, :cond_4

    .line 221
    const v4, 0x1010030

    .line 222
    const/4 v3, 0x1

    .line 223
    const v0, 0x42233333    # 40.8f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 226
    :cond_4
    :goto_0
    if-eqz v3, :cond_6

    .line 227
    invoke-static {v1, v4}, Lo/ڌ;->ˋ(Landroid/content/Context;I)I

    move-result v6

    .line 228
    invoke-static {p2, v6, v2}, Lo/ฯ;->ˊ(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 230
    const/4 v0, -0x1

    if-eq v5, v0, :cond_5

    .line 231
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method final ː(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 262
    const/4 v1, 0x0

    .line 264
    sget v0, Lo/ڊ$ˎ;->abc_switch_thumb_material:I

    if-ne p1, v0, :cond_0

    .line 265
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 268
    :cond_0
    return-object v1
.end method

.method public final ˣ(I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 272
    iget-object v0, p0, Lo/ฯ;->ẏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    .line 273
    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lo/ฯ;->ẓ:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ฯ;->ẓ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 278
    :goto_0
    if-nez v2, :cond_c

    .line 280
    sget v0, Lo/ڊ$ˎ;->abc_edit_text_material:I

    if-ne p1, v0, :cond_2

    .line 281
    invoke-direct {p0, v1}, Lo/ฯ;->ι(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    .line 282
    :cond_2
    sget v0, Lo/ڊ$ˎ;->abc_switch_track_mtrl_alpha:I

    if-ne p1, v0, :cond_3

    .line 283
    invoke-direct {p0, v1}, Lo/ฯ;->ʽ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    .line 284
    :cond_3
    sget v0, Lo/ڊ$ˎ;->abc_switch_thumb_material:I

    if-ne p1, v0, :cond_4

    .line 285
    invoke-direct {p0, v1}, Lo/ฯ;->ͺ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    .line 286
    :cond_4
    sget v0, Lo/ڊ$ˎ;->abc_btn_default_mtrl_shape:I

    if-eq p1, v0, :cond_5

    sget v0, Lo/ڊ$ˎ;->abc_btn_borderless_material:I

    if-ne p1, v0, :cond_6

    .line 288
    :cond_5
    invoke-direct {p0, v1}, Lo/ฯ;->ʾ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    .line 289
    :cond_6
    sget v0, Lo/ڊ$ˎ;->abc_spinner_mtrl_am_alpha:I

    if-eq p1, v0, :cond_7

    sget v0, Lo/ڊ$ˎ;->abc_spinner_textfield_background_material:I

    if-ne p1, v0, :cond_8

    .line 291
    :cond_7
    invoke-direct {p0, v1}, Lo/ฯ;->ʿ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    .line 292
    :cond_8
    sget-object v0, Lo/ฯ;->ᴩ:[I

    invoke-static {v0, p1}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 293
    sget v0, Lo/ڊ$if;->colorControlNormal:I

    invoke-static {v1, v0}, Lo/ڌ;->ˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    .line 294
    :cond_9
    sget-object v0, Lo/ฯ;->ṯ:[I

    invoke-static {v0, p1}, Lo/ฯ;->ˊ([II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 295
    invoke-direct {p0, v1}, Lo/ฯ;->ʼ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 298
    :cond_a
    :goto_1
    if-eqz v2, :cond_c

    .line 299
    iget-object v0, p0, Lo/ฯ;->ẓ:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 301
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/ฯ;->ẓ:Landroid/util/SparseArray;

    .line 304
    :cond_b
    iget-object v0, p0, Lo/ฯ;->ẓ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 307
    :cond_c
    return-object v2
.end method

.method public ι(IZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 162
    iget-object v0, p0, Lo/ฯ;->ẏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    .line 163
    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    invoke-static {v4, p1}, Lo/ᵣ;->ˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 167
    if-eqz v5, :cond_5

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 170
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lo/ฯ;->ˣ(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 174
    if-eqz v6, :cond_3

    .line 176
    invoke-static {v5}, Lo/ᐪ;->ˏ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 177
    invoke-static {v5, v6}, Lo/ᐪ;->ˊ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 180
    invoke-virtual {p0, p1}, Lo/ฯ;->ː(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 181
    if-eqz v7, :cond_2

    .line 182
    invoke-static {v5, v7}, Lo/ᐪ;->ˊ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 184
    :cond_2
    goto :goto_0

    :cond_3
    sget v0, Lo/ڊ$ˎ;->abc_cab_background_top_material:I

    if-ne p1, v0, :cond_4

    .line 185
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget v2, Lo/ڊ$ˎ;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, v2}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lo/ڊ$ˎ;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, v2}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 190
    :cond_4
    invoke-virtual {p0, p1, v5}, Lo/ฯ;->ˊ(ILandroid/graphics/drawable/Drawable;)Z

    move-result v7

    .line 191
    if-nez v7, :cond_5

    if-eqz p2, :cond_5

    .line 194
    const/4 v5, 0x0

    .line 198
    :cond_5
    :goto_0
    return-object v5
.end method
