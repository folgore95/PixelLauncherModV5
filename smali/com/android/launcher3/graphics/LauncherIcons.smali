.class public Lcom/android/launcher3/graphics/LauncherIcons;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static sPool:Lcom/android/launcher3/graphics/LauncherIcons;

.field public static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public final mCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private final mFillResIconDpi:I

.field private final mIconBitmapSize:I

.field private mNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

.field private next:Lcom/android/launcher3/graphics/LauncherIcons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mOldBounds:Landroid/graphics/Rect;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    .line 114
    iget-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mPm:Landroid/content/pm/PackageManager;

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 117
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iput v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mFillResIconDpi:I

    .line 118
    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    iput p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    .line 120
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    .line 121
    iget-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 122
    return-void
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 9

    .line 259
    iget v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    .line 260
    iget v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    .line 262
    instance-of v2, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_0

    .line 263
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/PaintDrawable;

    .line 264
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 265
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 266
    goto :goto_0

    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 268
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 269
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 275
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 276
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 277
    if-lez v2, :cond_3

    if-lez v3, :cond_3

    .line 279
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 280
    if-le v2, v3, :cond_2

    .line 281
    int-to-float v1, v0

    div-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_1

    .line 282
    :cond_2
    if-le v3, v2, :cond_3

    .line 283
    int-to-float v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 287
    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    .line 288
    iget v3, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    .line 290
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 292
    iget-object v5, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    sub-int v5, v2, v0

    div-int/lit8 v5, v5, 0x2

    .line 295
    sub-int v6, v3, v1

    div-int/lit8 v6, v6, 0x2

    .line 297
    iget-object v7, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 298
    sget-boolean v7, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v7, :cond_4

    instance-of v7, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v7, :cond_4

    .line 299
    const v7, 0x3c2aaaab

    int-to-float v8, v2

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 300
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 301
    invoke-virtual {p1, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    goto :goto_2

    .line 303
    :cond_4
    add-int/2addr v0, v5

    add-int/2addr v1, v6

    invoke-virtual {p1, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    invoke-virtual {v0, p2, p2, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 307
    iget-object p2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    iget-object p2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 309
    iget-object p2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 310
    iget-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    return-object v4
.end method

.method public static synthetic lambda$createShortcutIcon$0(Lcom/android/launcher3/graphics/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfoWithIcon;Landroid/graphics/Canvas;)V
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->getShadowGenerator()Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 354
    new-instance p1, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {p1, p2}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void
.end method

.method private normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 214
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_3

    .line 216
    const/4 p2, 0x1

    new-array v0, p2, [Z

    .line 217
    iget-object v3, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    const v4, 0x7f020001

    .line 218
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 219
    invoke-virtual {v3, v2, v2, p2, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object p2

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {p2, p1, p3, v4, v0}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p2

    .line 221
    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v4, :cond_2

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_2

    .line 222
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/graphics/FixedScaleDrawable;

    .line 223
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3eeef1fe    # 0.46669f

    mul-float/2addr p2, v5

    iput p2, v0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    iput p2, v0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    cmpl-float p2, p1, v4

    const/4 v5, 0x0

    if-lez p2, :cond_0

    cmpl-float p2, v4, v5

    if-lez p2, :cond_0

    iget p2, v0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    div-float/2addr v4, p1

    mul-float/2addr p2, v4

    iput p2, v0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    goto :goto_0

    :cond_0
    cmpl-float p2, v4, p1

    if-lez p2, :cond_1

    cmpl-float p2, p1, v5

    if-lez p2, :cond_1

    iget p2, v0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    div-float/2addr p1, v4

    mul-float/2addr p2, p1

    iput p2, v0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    .line 225
    :cond_1
    :goto_0
    nop

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object p1

    invoke-virtual {p1, v3, p3, v1, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p2

    .line 228
    move-object p1, v3

    :cond_2
    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v1, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p2

    .line 232
    :goto_1
    aput p2, p4, v2

    .line 233
    return-object p1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;
    .locals 2

    .line 72
    sget-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/android/launcher3/graphics/LauncherIcons;->sPool:Lcom/android/launcher3/graphics/LauncherIcons;

    if-eqz v1, :cond_0

    .line 74
    sget-object p0, Lcom/android/launcher3/graphics/LauncherIcons;->sPool:Lcom/android/launcher3/graphics/LauncherIcons;

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->next:Lcom/android/launcher3/graphics/LauncherIcons;

    sput-object v1, Lcom/android/launcher3/graphics/LauncherIcons;->sPool:Lcom/android/launcher3/graphics/LauncherIcons;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->next:Lcom/android/launcher3/graphics/LauncherIcons;

    .line 77
    monitor-exit v0

    return-object p0

    .line 79
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    new-instance v0, Lcom/android/launcher3/graphics/LauncherIcons;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/LauncherIcons;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 79
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 250
    iget v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    iget v3, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    return-void
.end method

.method public close()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 96
    return-void
.end method

.method public final createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;I)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 3

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 177
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 178
    const/4 p3, 0x0

    aget p3, v0, p3

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 179
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    instance-of p1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->getShadowGenerator()Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object p1

    invoke-static {p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 182
    iget-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 187
    new-instance p1, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;

    invoke-direct {p1, p3}, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    iget-object p3, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 189
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_1

    .line 190
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 192
    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 194
    goto :goto_0

    .line 195
    :cond_2
    nop

    .line 197
    :goto_0
    invoke-static {p3}, Lcom/android/launcher3/graphics/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public final createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 3

    .line 144
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    iget-object p1, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 148
    iget v2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mFillResIconDpi:I

    .line 149
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 150
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;I)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 155
    :cond_0
    goto :goto_0

    .line 153
    :catch_0
    move-exception p1

    .line 156
    :goto_0
    return-object v0
.end method

.method public final createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 2

    .line 163
    iget v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 164
    invoke-static {p1}, Lcom/android/launcher3/graphics/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/android/launcher3/graphics/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public final createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 205
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 206
    const/4 v1, 0x1

    new-array v1, v1, [F

    .line 207
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/graphics/LauncherIcons;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 208
    const/4 p2, 0x0

    aget p2, v1, p2

    .line 209
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3c2aaaab

    cmpg-float v2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez v2, :cond_0

    const v2, 0x3efaaaab

    sub-float v1, v3, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3d000000    # 0.03125f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    const/high16 v1, 0x3ef00000    # 0.46875f

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_1
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Z)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 1

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public final createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mFillResIconDpi:I

    .line 326
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 329
    nop

    .line 330
    if-eqz v0, :cond_0

    .line 331
    const/4 p3, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_1

    .line 333
    :cond_0
    if-eqz p3, :cond_1

    .line 334
    invoke-virtual {p3}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 336
    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    .line 337
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 341
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/launcher3/graphics/BitmapInfo;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/BitmapInfo;-><init>()V

    .line 342
    if-nez p2, :cond_3

    .line 343
    iget-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    const p2, 0x1010435

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    .line 344
    iput-object p3, v0, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 345
    return-object v0

    .line 348
    :cond_3
    nop

    .line 349
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/graphics/LauncherIcons;->getShortcutInfoBadge(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/ItemInfoWithIcon;

    move-result-object p1

    .line 351
    iget p2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    iput p2, v0, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    .line 352
    iget p2, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    iget v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mIconBitmapSize:I

    new-instance v2, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$3jZKh40_jy804jsQOrqRiVlegMI;

    invoke-direct {v2, p0, p3, p1}, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$3jZKh40_jy804jsQOrqRiVlegMI;-><init>(Lcom/android/launcher3/graphics/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfoWithIcon;)V

    invoke-static {p2, v1, v2}, Lcom/android/launcher3/uioverrides/UiFactory;->createFromRenderer$5956766c(IILcom/android/launcher3/graphics/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 356
    return-object v0
.end method

.method public final getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/launcher3/graphics/IconNormalizer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/IconNormalizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;

    return-object v0
.end method

.method public final getShadowGenerator()Lcom/android/launcher3/graphics/ShadowGenerator;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/android/launcher3/graphics/ShadowGenerator;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/ShadowGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

    return-object v0
.end method

.method public final getShortcutInfoBadge(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/ItemInfoWithIcon;
    .locals 4

    .line 360
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->mContext:Landroid/content/Context;

    const v2, 0x7f0c001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "badge_package"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "badge_package"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 362
    :goto_0
    iget-object v2, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 363
    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 365
    new-instance v1, Lcom/android/launcher3/AppInfo;

    invoke-direct {v1}, Lcom/android/launcher3/AppInfo;-><init>()V

    .line 366
    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, v1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    .line 367
    iput-object v0, v1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 368
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 369
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 370
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, v1, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 371
    invoke-virtual {p2, v1, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 372
    return-object v1

    .line 374
    :cond_1
    new-instance p1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-direct {p1, v1}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2, p1, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    .line 376
    return-object p1
.end method

.method public final recycle()V
    .locals 2

    .line 87
    sget-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/android/launcher3/graphics/LauncherIcons;->sPool:Lcom/android/launcher3/graphics/LauncherIcons;

    iput-object v1, p0, Lcom/android/launcher3/graphics/LauncherIcons;->next:Lcom/android/launcher3/graphics/LauncherIcons;

    .line 89
    sput-object p0, Lcom/android/launcher3/graphics/LauncherIcons;->sPool:Lcom/android/launcher3/graphics/LauncherIcons;

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
